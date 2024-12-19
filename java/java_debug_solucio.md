
# Exercicis de Depuració - Solucions

## Exercici 1

```java
public class Exercici1 {
    public static void main(String[] args) {
        int i = 0;
        while (i < 5) {
            System.out.println("Valor de i: " + i);
            i++; // Afegim l'increment
        }
    }
}
```

---

## Exercici 2

```java
public class Exercici2 {
    public static void main(String[] args) {
        int[] numbers = {1, 2, 3};
        for (int i = 0; i < numbers.length; i++) { // Canviem <= per <
            System.out.println(numbers[i]);
        }
    }
}
```

---

## Exercici 3

```java
public class Exercici3 {
    public static void main(String[] args) {
        int a = 10;
        int b = 2; // Canviem 0 per un valor diferent de zero
        System.out.println(a / b);
    }
}
```

---

## Exercici 4

```java
public class Exercici4 {
    public static void main(String[] args) {
        int num = 0; // Inicialitzem la variable
        System.out.println(num);
    }
}
```

---

## Exercici 5

```java
public class Exercici5 {
    public static void main(String[] args) {
        int x = 5;
        String result = "El resultat és: " + (x + 5); // Afegim parèntesis per l'ordre correcte
        System.out.println(result);
    }
}
```

---

## Exercici 6

```java
public class Exercici6 {
    public static void main(String[] args) {
        int x = 10;
        if (x == 5) { // Substituïm = per ==
            System.out.println("x és igual a 5");
        }
    }
}
```

---

## Exercici 7

```java
public class Exercici7 {
    public static void main(String[] args) {
        for (int i = 0; i < 5; i++) { // Canviem i-- per i++
            System.out.println(i);
        }
    }
}
```

---

## Exercici 8

```java
public class Exercici8 {
    public static void main(String[] args) {
        String text = "Hola"; // Assignem un valor no nul
        System.out.println(text.length());
    }
}
```

---

## Exercici 9

```java
public class Exercici9 {
    public static void main(String[] args) {
        float result = 1.0f / 3; // Utilitzem float en lloc de enter
        System.out.println(result);
    }
}
```

---

## Exercici 10

```java
public class Exercici10 {
    public static void main(String[] args) {
        int[] numbers = new int[4]; // Augmentem la mida de l'array
        numbers[3] = 10;
    }
}
```

---

## Exercici 11

```java
public class Exercici11 {
    public static void main(String[] args) {
        String num = "10";
        int result = Integer.parseInt(num) + 5; // Convertim el String a int
        System.out.println(result);
    }
}
```

---

## Exercici 12

```java
public class Exercici12 {
    public static void main(String[] args) {
        int result = suma(2, 3);
        System.out.println(result);
    }

    public static int suma(int a, int b) { // Afegim el retorn
        return a + b;
    }
}
```

---

## Exercici 13

```java
public class Exercici13 {
    public static void main(String[] args) {
        int[] nums = {1, 2, 3};
        for (int i = 0; i < nums.length; i++) { // Canviem a un bucle amb index
            nums[i] = nums[i] * 2;
        }
        System.out.println(nums[0]);
    }
}
```

---

## Exercici 14

```java
public class Exercici14 {
    public static void main(String[] args) {
        loop();
    }

    public static void loop() {
        int i = 0;
        while (i < 10) { // Afegim una condició de sortida
            System.out.println(i);
            i++;
        }
    }
}
```

---

## Exercici 15

```java
public class Exercici15 {
    public static void main(String[] args) {
        System.out.println(factorial(5));
    }

    public static int factorial(int n) {
        if (n == 0) return 1; // Correcció del cas base
        return n * factorial(n - 1);
    }
}
```

---
