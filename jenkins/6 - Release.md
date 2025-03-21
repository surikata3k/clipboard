# 🛠️ Tasca: Publicació d'una Release amb GitHub i Jenkins

## 🎯 Objectiu
Configurar un **Job de Jenkins** per compilar i publicar una **release** a GitHub automàticament.  

---

## 📌 **Part 1: Creació del repositori i codi en C**
1. Crea un **repositori públic** a GitHub anomenat `Random_C`.
2. Afegeix un fitxer `main.c` amb un programa en **C** que generi i imprimeixi un **nombre aleatori**.
3. Fes un **commit** i **puja el codi** al repositori.

---

## 📌 **Part 2: Configuració de Jenkins per compilar el programa**
1. Obre **Jenkins** i crea un **nou Job** de tipus **Freestyle** anomenat `Compile_Random_C`.
2. Configura el Job per:
   - Clonar el **repositori** `Random_C` des de GitHub.
   - Compilar el programa amb `gcc`.
   - Verificar que la compilació s'ha fet correctament executant l'executable generat.
3. Guarda i executa el **Job** per comprovar que funciona correctament.

---

## 📌 **Part 3: Publicació Automàtica d'una Release a GitHub**
1. Obté un **GitHub Personal Access Token (PAT)** amb permisos `repo` i `workflow`.
2. Desa el token a **Jenkins** com a **credencial de tipus Secret Text** (`GITHUB_TOKEN`).
3. Afegeix un **script Python** al Job que:
   - Generi un **tag** i nom de release basat en la data i hora.
   - Creï una **release** automàtica a GitHub.
   - Pugi l'executable generat a la release.
4. **Modifica el Job de Jenkins** per executar l'script Python després de la compilació.

---

## 📌 **Part 4: Validació**
1. Executa el **Job de Jenkins**.
2. Comprova que:
   - El programa en **C** es compila correctament.
   - Es crea una **release** automàtica a GitHub.
   - L'executable es puja a la release.
3. Comparteix el teu repositori GitHub amb el professor per validar la tasca.

🚀 **Felicitats! Has automatitzat el procés de publicació d'una Release amb GitHub i Jenkins!** 🎉

