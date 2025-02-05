
# Exercicis per practicar `make`

## Introducció

La comanda `make` és una eina potent per gestionar i automatitzar la compilació de projectes. Aquest conjunt d'exercicis està dissenyat per ajudar-te a comprendre com crear i utilitzar fitxers `Makefile` per automatitzar la compilació de projectes en C i Java.

---

## Exercicis

### **Exercici 1: Compilació bàsica en C**
Escriu un programa senzill en C que imprimeixi "Hola, món!". Automatitza la compilació amb un fitxer `Makefile`.

#### **Passos**
1. Escriu un programa anomenat `hola.c` que imprimeixi "Hola, món!".
2. Crea un fitxer `Makefile` que contingui:
   - Una regla per compilar el programa.
   - Una regla per netejar els fitxers generats (`make clean`).

#### **Objectius**
- Escriure un `Makefile` funcional.
- Utilitzar `make` per compilar i netejar el projecte.

---

### **Exercici 2: Compilació amb múltiples fitxers en C**
Escriu un projecte en C que tingui diverses unitats de compilació.

#### **Passos**
1. Escriu els fitxers següents:
   - Un fitxer principal (`main.c`) que faci ús de funcions externes.
   - Un fitxer de funcions (`util.c` i `util.h`) que defineixi les funcions utilitzades.

2. Crea un `Makefile` que:
   - Compili els fitxers `.c` en objectes `.o`.
   - Enllaci els objectes en un executable.
   - Inclogui una regla per netejar els fitxers generats (`make clean`).

#### **Objectius**
- Aprendre a compilar projectes modulars amb `make`.
- Practicar la gestió de dependències en un `Makefile`.

---

### **Exercici 3: Compilació en Java**
Crea un projecte senzill en Java i automatitza la compilació amb `make`.

#### **Passos**
1. Escriu un programa Java que imprimeixi "Hola, món en Java!".
2. Crea un `Makefile` que:
   - Inclogui una regla per compilar el fitxer `.java` en un fitxer `.class`.
   - Inclogui una regla per executar el programa (`make run`).
   - Inclogui una regla per netejar els fitxers generats (`make clean`).

#### **Objectius**
- Automatitzar la compilació de projectes Java amb `make`.
- Entendre com definir regles personalitzades com `run`.

---

### **Exercici 4: Compilació avançada en C**
Implementa un programa que faci ús d'una biblioteca estàtica.

#### **Passos**
1. Escriu els següents fitxers:
   - Un fitxer principal (`main.c`) que faci ús d'una funció definida en una biblioteca.
   - Una biblioteca estàtica (`mathlib.c` i `mathlib.h`) amb una funció que realitzi una operació matemàtica.

2. Crea un `Makefile` que:
   - Generi la biblioteca estàtica.
   - Enllaci la biblioteca estàtica amb el programa principal.
   - Inclogui una regla per netejar el projecte (`make clean`).

#### **Objectius**
- Entendre la compilació i enllaç de biblioteques estàtiques amb `make`.
- Practicar la creació de regles per generar biblioteques.

---

### **Exercici 5: Projecte multi-idioma (C i Java)**
Crea un projecte que combini un programa en C i un en Java, automatitzant totes les tasques amb un sol `Makefile`.

#### **Passos**
1. Escriu un programa en C (`programa_c.c`) i un altre en Java (`programa_java.java`) amb qualsevol funcionalitat senzilla.

2. Escriu un `Makefile` que:
   - Inclogui regles per compilar els fitxers `.c` i `.java`.
   - Tingui una regla `make all` que compili tots els components del projecte.
   - Inclogui regles per executar cadascun dels programes (`make run_c` i `make run_java`).
   - Inclogui una regla per netejar tot el projecte (`make clean`).

#### **Objectius**
- Integrar múltiples llenguatges en un sol projecte.
- Automatitzar completament la gestió del projecte amb `make`.

---

Practica amb aquests exercicis per consolidar els teus coneixements sobre `make` i l'automatització de projectes!
