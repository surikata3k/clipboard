# 📌 Triggers de Jenkins

Els **triggers de Jenkins** són mecanismes que permeten iniciar automàticament una execució (**build**) d'un projecte en resposta a diferents esdeveniments o condicions. Aquests triggers ajuden a automatitzar el procés de desenvolupament i desplegament contínu.  

## 🔹 Principals tipus de triggers en Jenkins  

### 1️⃣ Trigger per canvis en el repositori (**SCM Polling**)  
Jenkins pot comprovar periòdicament si hi ha canvis en un sistema de control de versions (com **Git** o **SVN**) i, si en troba, iniciar una build.  

- Es configura a **"Build Triggers" → "Poll SCM"**  
- Es defineix un cron (ex: `H/5 * * * *` per comprovar cada 5 minuts).  

### 2️⃣ Trigger per webhook (**Push Trigger**)  
En comptes de fer **polling**, es pot configurar un **webhook** en el repositori perquè sigui aquest qui avisi a Jenkins quan hi hagi un canvi.  

- Molt útil amb **GitHub, GitLab o Bitbucket**.  
- Redueix el consum de recursos comparat amb el polling.  

### 3️⃣ Trigger manual  
Els usuaris poden iniciar builds manualment fent clic al botó **"Build Now"** dins el projecte a Jenkins.  

### 4️⃣ Trigger per temporitzador (**Scheduled Build**)  
Executa la build segons un horari fix, definit amb una expressió **cron**.  

- Ex: `H 2 * * 1-5` (executar cada dia laborable a les 2 AM).  

### 5️⃣ Trigger per un altre job (**Upstream/Downstream Builds**)  
Permet executar una build quan un altre **job** ha finalitzat.  

- Exemple: Després d’un test automatitzat, iniciar un desplegament.  

### 6️⃣ Trigger per canvi en una build (**Post-build actions**)  
- Es pot configurar perquè si una build falla, es torni a executar automàticament.  
- També pot activar altres projectes quan una build té èxit.  

### 7️⃣ Trigger per esdeveniments externs (**Build Trigger API**)  
Es poden iniciar builds des de scripts o aplicacions externes utilitzant l’**API REST** de Jenkins (`curl`, `POST` HTTP, etc.).  

- Exemple:  

  ```bash
  curl -X POST http://jenkins.example.com/job/MiProject/build?token=SECRET

