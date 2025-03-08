# Com funcionen les notificacions a Jenkins

Les notificacions a Jenkins són una funcionalitat clau per mantenir els equips informats sobre l'estat de les construccions (builds), els canvis en el codi i altres esdeveniments rellevants en el flux de treball. Jenkins ofereix diverses maneres de configurar i enviar notificacions, ja sigui per correu electrònic, missatgeria instantània (com Slack o Microsoft Teams), o fins i tot notificacions push a dispositius mòbils mitjançant serveis com **ntfy**.

---

## **1. Tipus de notificacions a Jenkins**

Jenkins pot enviar notificacions en diferents escenaris, com ara:

- **Quan una construcció falla**: Notifica als desenvolupadors quan una construcció no té èxit.
- **Quan una construcció té èxit**: Informa que una construcció s'ha completat correctament.
- **Quan una construcció és inestable**: Notifica quan una construcció té problemes menors (per exemple, alguns tests han fallat).
- **Quan es produeix un canvi en el codi**: Notifica quan es fa un commit nou en un repositori de codi.
- **Quan es restaura un servei**: Notifica quan es resol un problema i es restaura la normalitat.

---

## **2. Mètodes de notificació**

Jenkins admet diversos mètodes per enviar notificacions:

### **a) Correu electrònic**
- Jenkins pot enviar correus electrònics mitjançant un servidor SMTP.
- Es poden configurar notificacions per a diferents estats de les construccions (èxit, fallada, inestable).
- Es pot utilitzar el plugin **Email Extension Plugin** per personalitzar els correus electrònics.

### **b) Missatgeria instantània**
- Jenkins pot enviar missatges a plataformes com **Slack**, **Microsoft Teams**, o **Telegram** mitjançant plugins com:
  - **Slack Notification Plugin**
  - **Microsoft Teams Notification Plugin**
  - **Telegram Notification Plugin**
- Aquestes notificacions es poden personalitzar per incloure informació detallada sobre les construccions.

### **c) Notificacions push**
- Jenkins pot enviar notificacions push a dispositius mòbils mitjançant serveis com **ntfy** o **Pushover**.
- Això es pot fer mitjançant crides HTTP o utilitzant plugins específics.

### **d) Webhooks**
- Jenkins pot enviar notificacions a altres sistemes mitjançant webhooks.
- Això és útil per integrar Jenkins amb eines de monitorització o sistemes de notificacions personalitzats.

---

## **3. Com funcionen les notificacions a Jenkins**

Les notificacions a Jenkins es configuren en dos nivells principals:

### **a) Configuració global**
- A la secció **Manage Jenkins** > **Configure System**, es configuren els paràmetres globals per a les notificacions, com ara:
  - Servidor SMTP per a correus electrònics.
  - Tokens d'integració per a Slack, Microsoft Teams, etc.
  - URLs de webhooks per a notificacions push.

### **b) Configuració per projecte (job)**
- A cada projecte (job) de Jenkins, es poden configurar notificacions específiques.
- Això es fa a la secció **Post-build Actions** o **Pipeline Script** (si s'utilitza un pipeline).
- Es poden afegir accions com enviar un correu electrònic, enviar un missatge a Slack, o fer una crida HTTP a un servei com ntfy.

---

## **4. Exemples de configuració de notificacions**

### **a) Notificacions per correu electrònic**
1. Instal·la el plugin **Email Extension Plugin**.
2. Configura el servidor SMTP a **Manage Jenkins** > **Configure System**.
3. Afegeix una acció de post-construcció al teu projecte:
   - Vés a **Post-build Actions** > **Editable Email Notification**.
   - Configura els destinataris, l'assumpte i el cos del correu.

### **b) Notificacions a Slack**
1. Instal·la el plugin **Slack Notification Plugin**.
2. Configura el token d'integració de Slack a **Manage Jenkins** > **Configure System**.
3. Afegeix una acció de post-construcció al teu projecte:
   - Vés a **Post-build Actions** > **Slack Notifications**.
   - Configura els missatges per a diferents estats de les construccions.

### **c) Notificacions push amb ntfy**
1. Crea un tema a ntfy (per exemple, `https://ntfy.sh/el_teu_tema`).
2. Afegeix una acció de post-construcció al teu projecte:
   - Vés a **Post-build Actions** > **Execute shell**.
   - Afegeix un script com aquest:
     ```bash
     curl -X POST \
       -H "Title: Jenkins Build Notification" \
       -H "Priority: default" \
       -d "Build ${BUILD_NUMBER} de ${JOB_NAME} - Estat: ${BUILD_STATUS}" \
       https://ntfy.sh/el_teu_tema
     ```

---

## **5. Personalització de les notificacions**

Les notificacions es poden personalitzar per incloure informació específica, com:
- **Variables de Jenkins**: `${BUILD_NUMBER}`, `${JOB_NAME}`, `${BUILD_STATUS}`, `${BUILD_URL}`.
- **Logs de la construcció**: `${BUILD_LOG}`.
- **Duració de la construcció**: `${BUILD_DURATION}`.

Exemple de missatge personalitzat:
```plaintext
Build ${BUILD_NUMBER} de ${JOB_NAME} - Estat: ${BUILD_STATUS}
Enllaç: ${BUILD_URL}
Duració: ${BUILD_DURATION}
