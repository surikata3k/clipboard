# 🔑 Conceptes Bàsics de Jenkins

## 1. Què és Jenkins?
▶️ **Jenkins** és una eina de codi obert per a **Integració Contínua (CI)** i **Desplegament Contínu (CD)**.  
Permet automatitzar tot el procés de desenvolupament, des de la compilació fins al desplegament.

---

## 2. Per a què serveix Jenkins?
👉 Automatitzar tasques repetitives com:
- ✅ Compilar el codi
- ✅ Fer proves automàtiques
- ✅ Desplegar aplicacions
- ✅ Notificar errors
- ✅ Gestionar versions

---

## 3. Arquitectura de Jenkins
🔍 Jenkins funciona amb una arquitectura **Client-Server**:

| Component   | Descripció                        |
|-------------|---------------------------------|
| **Controller (Master)** | Controla i coordina les tasques |
| **Agent (Node)**        | Execució de les tasques en altres màquines |
| **Jobs**               | Tasques automatitzades (compilació, proves, desplegament) |

---

## 4. Jobs (Treballs)
Els **jobs** són la unitat bàsica a Jenkins. Cada job pot ser:
- **Freestyle Project** → Configuració bàsica (compilació, scripts)
- **Pipeline** → Seqüència de passos amb codi Groovy
- **Multibranch Pipeline** → CI/CD per a diferents branques de Git
- **Folder** → Organitzar múltiples jobs

---

## 5. Pipelines
💪 El més utilitzat actualment!  
És un fitxer que defineix tot el procés de CI/CD com codi.

### 📌 Exemple de codi de pipeline:
```groovy
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/usuari/projecte.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Desplegant aplicació...'
            }
        }
    }
}
```

## 6. Plugins
Jenkins té més de **1.800 plugins** que permeten integrar-lo amb eines com:
- 🔹 **Git/GitHub/GitLab**
- 🔹 **Docker**
- 🔹 **Slack**
- 🔹 **SonarQube** (anàlisi de codi)
- 🔹 **Kubernetes**
- 🔹 **AWS/Azure**

---

## 7. Triggers
Pots fer que Jenkins s'executi automàticament amb:
- 🔄 Canvis a Git (**Webhooks**)
- ⏳ Temporitzadors (**Cron jobs**)
- 🔗 Peticions HTTP (**API**)
- 👤 Manualment

---

## 8. Gestió de Secrets
🔑 Jenkins permet guardar **credencials** com:
- 🔐 Usuaris i contrasenyes
- 🔐 API Keys
- 🔐 Tokens de GitHub

---

## 9. Logs i Notificacions
📢 Jenkins pot enviar notificacions a:
- 📧 Correu electrònic
- 💬 Slack
- 🎮 Discord
- 🏢 Microsoft Teams
- 📱 Telegram

---

## 10. Seguretat
Configuracions bàsiques:
- 🔒 Control d'accés per rols
- 🔒 Usuaris i grups
- 🔒 Integració amb LDAP o OAuth
- 🔒 Secrets xifrats

---

## 🔌 Integracions Populars

| Eina       | Ús               |
|------------|----------------|
| **Git**        | Control de versions |
| **Docker**     | Contenidors |
| **SonarQube**  | Anàlisi de codi |
| **Nexus**      | Gestió d'artifacts |
| **Kubernetes** | Desplegaments automàtics |

---

## 🎯 Workflow bàsic CI/CD
1. 📌 Un desenvolupador fa un **commit** a GitHub
2. 🚀 Jenkins detecta el canvi
3. 🔽 Descarrega el codi
4. 🛠️ Compila el projecte
5. ✅ Executa proves automàtiques
6. 📊 Publica resultats
7. 🌍 Si tot està bé, desplega l'aplicació

---

## 🔥 Bonus
Pots crear pipelines amb codi directament des de GitHub utilitzant **Jenkinsfile**.

---

## 🗣️ Com explicar-ho de manera visual:

| Conceptes | Metàfora |
|------------|----------|
| **Jenkins**   | Xef d'una cuina 🍳 |
| **Jobs**      | Receptes de plats |
| **Pipelines** | Llista de passos per cuinar |
| **Agents**    | Cuiners auxiliars |
| **Plugins**   | Estris de cuina |

---

## 📌 Resum Final

| Funció     | Descripció                    |
|------------|-----------------------------|
| **CI**         | Compilar i provar codi automàticament |
| **CD**         | Desplegar aplicacions automàticament |
| **Pipelines**  | Definir passos amb codi |
| **Plugins**    | Integracions amb altres eines |
| **Nodes**      | Màquines d'execució |

---

## 🔑 Missatge final
⚡ **Jenkins automatitza el que faries manualment, fent que el procés de desenvolupament sigui més ràpid, segur i eficient.** 🚀
