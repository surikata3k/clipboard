# Aquí tens una explicació dels blocs de construcció CSS i alguns exemples pràctics:

## Explicació dels blocs de construcció CSS

CSS (Cascading Style Sheets - Fulls d'Estil en Cascada) és un llenguatge que s'utilitza per descriure la presentació d'un document escrit en un llenguatge de marques com HTML. 
Els "blocs de construcció" de CSS són els conceptes fonamentals que permeten controlar l'aparença dels elements a la pàgina web. Aquí teniu alguns dels més importants:

### Selectors: Els selectors CSS permeten seleccionar els elements HTML als quals s'aplicaran els estils. Hi ha diversos tipus de selectors:

- Selectors d'element (o tipus): Seleccionen tots els elements d'un tipus determinat (p. ex., p per a paràgrafs, h1 per a encapçalaments).
- Selectors de classe: Seleccionen elements amb un atribut de classe específic (p. ex., .important).
- Selectors d'ID: Seleccionen un element amb un atribut ID únic (p. ex., #capçalera).
- Selectors d'atribut: Seleccionen elements basant-se en la presència o valor d'un atribut (p. ex., [title]).
- Pseudo-classes: Seleccionen elements en un estat determinat (p. ex., :hover quan el ratolí està a sobre).
- Pseudo-elements: Seleccionen parts específiques d'un element (p. ex., ::first-line per a la primera línia d'un text).
- Combinadors: Permeten combinar selectors per a una selecció més precisa (p. ex., div p selecciona tots els paràgrafs dins d'un div).
- Propietats i valors: Les propietats CSS defineixen l'aspecte que es vol canviar (p. ex., color, font-size, margin). Cada propietat té un valor que especifica com es vol canviar l'aspecte (p. ex., red, 16px, 10px).

### Model de caixa (Box Model): Cada element HTML es representa com una caixa rectangular. Aquesta caixa consta de:

- Contingut (content): El text o la imatge dins de l'element.
- Padding (farciment): L'espai entre el contingut i la vora.
- Vora (border): La línia que envolta el padding i el contingut.
- Marge (margin): L'espai entre la vora i els elements adjacents.
- Cascada i herència: La cascada defineix com s'apliquen els estils quan hi ha conflictes (diferents regles que afecten el mateix element). L'herència permet que alguns estils s'heretin dels elements pare als elements fill.

## Exercicis pràctics

Aquí teniu alguns exercicis pràctics per aplicar aquests conceptes. 
Recomano crear un fitxer HTML (index.html) i un fitxer CSS (styles.css) i enllaçar-los.

### Exercici 1: Selectors bàsics

```HTML
<!DOCTYPE html>
<html>
<head>
    <title>Exercici 1</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Títol principal</h1>
    <p class="important">Aquest és un paràgraf important.</p>
    <p id="paragraf2">Aquest és un altre paràgraf.</p>
    <ul>
        <li>Element 1</li>
        <li>Element 2</li>
    </ul>
</body>
</html>
```

```CSS
/* styles.css */
h1 {
    color: blue;
    text-align: center;
}

.important {
    font-weight: bold;
    color: red;
}

#paragraf2 {
    font-style: italic;
}

ul li {
    list-style-type: circle;
}
```

### Exercici 2: Model de caixa

```HTML
<!DOCTYPE html>
<html>
<head>
    <title>Exercici 2</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="box">Aquesta és una caixa.</div>
</body>
</html>
```

```CSS

/* styles.css */
.box {
    width: 200px;
    height: 100px;
    background-color: lightgray;
    padding: 20px;
    border: 5px solid black;
    margin: 30px;
}
```

### Exercici 3: Pseudo-classes

```HTML
<!DOCTYPE html>
<html>
<head>
    <title>Exercici 3</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <a href="#">Enllaç</a>
</body>
</html>
```

```CSS
/* styles.css */
a {
    color: blue;
    text-decoration: none;
}

a:hover {
    color: red;
    text-decoration: underline;
}
```

### Exercici 4: Combinadors

```HTML
<!DOCTYPE html>
<html>
<head>
    <title>Exercici 4</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div>
        <p>Paràgraf dins d'un div.</p>
        <span><p>Paràgraf dins d'un span dins d'un div.</p></span>
    </div>
    <p>Paràgraf fora del div.</p>
</body>
</html>
```

```CSS
/* styles.css */
div p {
    color: green;
}
```

Aquests exercicis us ajudaran a comprendre millor els blocs de construcció CSS. Experimenteu amb diferents valors i propietats per veure'n els efectes. A mesura que avanceu, podeu explorar conceptes més avançats com Flexbox i Grid per a dissenys més complexos.
