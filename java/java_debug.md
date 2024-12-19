
# Exercicis de Depuració

## Exercici 1

```java
public class Exercici1 {
    public static void main(String[] args) {
        int i = 0;
        while (i < 5) {
            System.out.println("Valor de i: " + i);
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
        for (int i = 0; i <= numbers.length; i++) {
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
        int b = 0;
        System.out.println(a / b);
    }
}
```

---

## Exercici 4

```java
public class Exercici4 {
    public static void main(String[] args) {
        int num;
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
        String result = "El resultat és: " + x + 5;
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
        if (x = 5) {
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
        for (int i = 0; i < 5; i--) {
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
        String text = null;
        System.out.println(text.length());
    }
}
```

---

## Exercici 9

```java
public class Exercici9 {
    public static void main(String[] args) {
        float result = 1 / 3;
        System.out.println(result);
    }
}
```

---

## Exercici 10

```java
public class Exercici10 {
    public static void main(String[] args) {
        int[] numbers = new int[3];
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
        int result = num + 5;
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

    public static void suma(int a, int b) {
        int sum = a + b;
    }
}
```

---

## Exercici 13

```java
public class Exercici13 {
    public static void main(String[] args) {
        int[] nums = {1, 2, 3};
        for (int i : nums) {
            i = i * 2;
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
        while (true) {
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
        if (n == 0) return 0;
        return n * factorial(n - 1);
    }
}
```

---
