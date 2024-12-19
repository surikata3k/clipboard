
# Exercicis per practicar `make`

## Introducció

La comanda `make` és una eina potent per gestionar i automatitzar la compilació de projectes. Aquest conjunt d'exercicis està dissenyat per ajudar-te a comprendre com crear i utilitzar fitxers `Makefile` per automatitzar la compilació de projectes en C i Java.

---

## Exercicis

### **Exercici 1: Compilació bàsica en C**
Escriu un programa senzill en C que imprimeixi "Hola, món!". Automatitza la compilació amb un fitxer `Makefile`.

#### **Passos**
1. Escriu un programa anomenat `hola.c` amb el següent contingut:

   ```c
   #include <stdio.h>
   int main() {
       printf("Hola, món!\n");
       return 0;
   }
   ```

2. Crea un fitxer `Makefile` que contingui:

   ```makefile
   all: hola

   hola: hola.c
       gcc -o hola hola.c

   clean:
       rm -f hola
   ```

#### **Objectius**
- Escriure un `Makefile` funcional.
- Utilitzar `make` per compilar i netejar el projecte.

---

### **Exercici 2: Compilació amb múltiples fitxers en C**
Escriu un projecte en C que tingui diverses unitats de compilació.

#### **Passos**
1. Escriu els següents fitxers:

   `main.c`
   ```c
   #include "util.h"
   int main() {
       imprimir_missatge();
       return 0;
   }
   ```

   `util.c`
   ```c
   #include <stdio.h>
   void imprimir_missatge() {
       printf("Aquest és un projecte modular!\n");
   }
   ```

   `util.h`
   ```c
   void imprimir_missatge();
   ```

2. Escriu un `Makefile` amb:

   ```makefile
   all: programa

   programa: main.o util.o
       gcc -o programa main.o util.o

   main.o: main.c util.h
       gcc -c main.c

   util.o: util.c util.h
       gcc -c util.c

   clean:
       rm -f *.o programa
   ```

#### **Objectius**
- Aprendre a compilar projectes modulars amb `make`.
- Practicar la gestió de dependències en un `Makefile`.

---

### **Exercici 3: Compilació en Java**
Crea un projecte senzill en Java i automatitza la compilació amb `make`.

#### **Passos**
1. Escriu els següents fitxers:

   `Hola.java`
   ```java
   public class Hola {
       public static void main(String[] args) {
           System.out.println("Hola, món en Java!");
       }
   }
   ```

2. Escriu un `Makefile` amb:

   ```makefile
   all: Hola.class

   Hola.class: Hola.java
       javac Hola.java

   run: Hola.class
       java Hola

   clean:
       rm -f *.class
   ```

#### **Objectius**
- Automatitzar la compilació de projectes Java amb `make`.
- Entendre com definir regles personalitzades com `run`.

---

### **Exercici 4: Compilació avançada en C**
Implementa un programa que faci ús d'una biblioteca estàtica.

#### **Passos**
1. Escriu els següents fitxers:

   `main.c`
   ```c
   #include "mathlib.h"
   int main() {
       int resultat = suma(5, 7);
       printf("El resultat és: %d\n", resultat);
       return 0;
   }
   ```

   `mathlib.c`
   ```c
   int suma(int a, int b) {
       return a + b;
   }
   ```

   `mathlib.h`
   ```c
   int suma(int a, int b);
   ```

2. Escriu un `Makefile` que:

   ```makefile
   all: programa

   programa: main.o libmath.a
       gcc -o programa main.o -L. -lmath

   main.o: main.c mathlib.h
       gcc -c main.c

   libmath.a: mathlib.o
       ar rcs libmath.a mathlib.o

   mathlib.o: mathlib.c mathlib.h
       gcc -c mathlib.c

   clean:
       rm -f *.o programa libmath.a
   ```

#### **Objectius**
- Entendre la compilació i enllaç de biblioteques estàtiques amb `make`.
- Practicar la creació de regles per generar biblioteques.

---

### **Exercici 5: Projecte multi-idioma (C i Java)**
Crea un projecte que combini un programa en C i un en Java, automatitzant totes les tasques amb un sol `Makefile`.

#### **Passos**
1. Escriu un programa en C (`programa_c.c`) i un altre en Java (`programa_java.java`) amb qualsevol funcionalitat senzilla.

   `programa_c.c`
   ```c
   #include <stdio.h>
   int main() {
       printf("Hola des de C!\n");
       return 0;
   }
   ```

   `programa_java.java`
   ```java
   public class ProgramaJava {
       public static void main(String[] args) {
           System.out.println("Hola des de Java!");
       }
   }
   ```

2. Escriu un `Makefile` que:

   ```makefile
   all: programa_c programa_java

   programa_c: programa_c.c
       gcc -o programa_c programa_c.c

   programa_java: programa_java.java
       javac programa_java.java

   run_c: programa_c
       ./programa_c

   run_java: programa_java.class
       java ProgramaJava

   clean:
       rm -f programa_c *.class
   ```

#### **Objectius**
- Integrar múltiples llenguatges en un sol projecte.
- Automatitzar completament la gestió del projecte amb `make`.

---

Practica amb aquests exercicis per consolidar els teus coneixements sobre `make` i l'automatització de projectes!
