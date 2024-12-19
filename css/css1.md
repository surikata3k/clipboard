# Manual per Aprendre CSS

## 1. Introducció a CSS
CSS (Cascading Style Sheets) és el llenguatge utilitzat per estilitzar el contingut d’una pàgina web. Amb CSS podem definir colors, fonts, dissenys, espais, etc.

### Exemple Bàsic
```html
<!DOCTYPE html>
<html lang="ca">
<head>
  <title>Exemple CSS</title>
  <style>
    body {
      background-color: lightblue;
      color: darkblue;
    }
  </style>
</head>
<body>
  <h1>Hola, CSS!</h1>
  <p>Aquest és un exemple senzill.</p>
</body>
</html>
```

---

## 2. Selectors i Especificitat
Els selectors indiquen a quins elements HTML s’aplicaran els estils. 

### Tipus de Selectors
- **Universal**: Aplica a tots els elements.
  ```css
  * {
    margin: 0;
    padding: 0;
  }
  ```

- **Per etiqueta**: Aplica a una etiqueta específica.
  ```css
  p {
    color: red;
  }
  ```

- **Per classe**: Aplica als elements amb una classe específica.
  ```css
  .highlight {
    background-color: yellow;
  }
  ```

- **Per id**: Aplica a un element amb un id.
  ```css
  #header {
    text-align: center;
  }
  ```

- **Pseudo-classes**: Defineix estats especials dels elements.
  ```css
  a:hover {
    color: green;
  }
  ```

- **Pseudo-elements**: Afegeix contingut abans o després dels elements.
  ```css
  p::before {
    content: "\u2708 ";
  }
  ```

### Especificitat
L’especificitat determina quin estil s’aplica si hi ha conflictes. 
- **Id**: Més prioritari.
- **Classe**: Menys prioritari que id.
- **Etiqueta**: Menys prioritari que classe.

### Exercici
Crea un html i utilitza els tres selectors explicats anteriorment (id, class o etiqueta) per assignar diferents colors.

---

## 3. El Model de Caixa (Box Model)
Tot element HTML es tracta com una caixa que conté:
- **Content**: El contingut de l’element.
- **Padding**: Espai entre el contingut i la vora.
- **Border**: Vora de l’element.
- **Margin**: Espai entre la caixa i altres elements.

### Exemple
```css
div {
  width: 200px;
  height: 100px;
  padding: 10px;
  border: 2px solid black;
  margin: 20px;
}
```

### Exercici
Crea un div amb un padding de 15px, una vora de 3px i un marge de 25px.

---

## 4. Tipus de Display
Defineixen com es comporten els elements a la pàgina:

- **Block**: Ocupa tota l’amplada disponible.
  ```css
  div {
    display: block;
  }
  ```

- **Inline**: Es col·loca al costat d’altres elements.
  ```css
  span {
    display: inline;
  }
  ```

- **Flex**: Permet dissenys flexibles.
  ```css
  div {
    display: flex;
  }
  ```

- **Grid**: Organitza elements en una reixeta.
  ```css
  div {
    display: grid;
  }
  ```

### Exercici
Crea un html on hi hagi tres divs, dona un color a cada div i prova els diferents displays.

---

## 5. Colors i Gradients

### Colors
- Nom de color:
  ```css
  color: red;
  ```

- Hexadecimal:
  ```css
  color: #ff0000;
  ```

- RGB i RGBA:
  ```css
  color: rgba(255, 0, 0, 0.5);
  ```

### Gradients
- Lineals:
  ```css
  background: linear-gradient(to right, red, yellow);
  ```

- Radials:
  ```css
  background: radial-gradient(circle, blue, green);
  ```

### Exercici
Crea un gradient que passi de vermell a blau.
Crea tres paragrafs i dona un color diferent a cada un amb els tres tipus de colors (nom, RGB i hexadecimal).

---

## 6. Fonts i Tipografies

### Fonts
```css
body {
  font-family: Arial, sans-serif;
}
```

### Estilització de text
- **Mida**:
  ```css
  font-size: 16px;
  ```

- **Gruix**:
  ```css
  font-weight: bold;
  ```

- **Transformació**:
  ```css
  text-transform: uppercase;
  ```

- **Espaiat**:
  ```css
  letter-spacing: 2px;
  ```

### Exercici
Crea 5 paragrafs i dona diferent format de text a cada un.

---

## 7. Posicionament d’Elements
### Tipus de Posicionament
- **Static**: Per defecte.
- **Relative**: Relatiu a la posició original.
  ```css
  div {
    position: relative;
    top: 10px;
    left: 20px;
  }
  ```

- **Absolute**: Relatiu al contenidor amb `position: relative`.
  ```css
  div {
    position: absolute;
    top: 50px;
    left: 100px;
  }
  ```

- **Fixed**: Fix a la pantalla.
  ```css
  div {
    position: fixed;
    bottom: 0;
    right: 0;
  }
  ```

### Exercici
Crea un html on hi hagi tres divs, prova les diferents positions.

---

## 8. Flexbox
Flexbox és ideal per alinear i distribuir elements.

### Exemple
```css
.container {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

### Propietats de Flexbox
- **justify-content**: Controla l’alineació horitzontal.
- **align-items**: Controla l’alineació vertical.
- **flex-direction**: Defineix la direcció dels elements (row, column).

### Exercici
Crea un contenidor amb tres elements centrats horitzontalment i verticalment.

---

## 9. CSS Grid
CSS Grid permet crear dissenys en reixeta.

### Exemple
```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
}
```

### Propietats de Grid
- **grid-template-rows**: Defineix les files.
- **grid-column-gap**: Espai entre columnes.
- **grid-row-gap**: Espai entre files.

### Exercici
Crea una reixeta amb quatre columnes i dues files.

---

## 10. Responsivitat amb Media Queries

### Exemple
```css
@media (max-width: 600px) {
  body {
    font-size: 16px;
  }
}
```

### Exercici
Crea una pàgina on el color de fons canviï segons la mida de la pantalla.

---

## 11. Animacions i Transicions

### Transicions
```css
button {
  transition: background-color 0.5s ease;
}
```

### Animacions
```css
@keyframes fade-in {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

div {
  animation: fade-in 2s;
}
```

---

## 12. Pseudoclases i Pseudoelements

### Exemple
```css
a:hover {
  color: green;
}
p::before {
  content: "\u2708 ";
}
```

### Exercici
Crea una llista on cada element tingui un símbol abans del text.

---

## 13. Ombres i Estils 3D

### Ombra de Text
```css
h1 {
  text-shadow: 2px 2px 4px #000;
}
```

### Ombra de Caixa
```css
div {
  box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3);
}
```

### Exercici
Crea una targeta amb ombra i una transició quan es passi el ratolí per sobre.

---

## 14. Clips i Màscares

### Clip-path
```css
img {
  clip-path: circle(50%);
}
```

### Màscares
```css
div {
  mask-image: linear-gradient(to right, black, transparent);
}
```

### Exercici
Aplica un clip-path en forma d’estrella a una imatge.

---

## 15. Exercicis Pràctics
1. Crea una pàgina amb tres columnes utilitzant Flexbox.
2. Dissenya un header amb un gradient de fons i un text centrat.
3. Aplica una animació a un botó que canviï de color quan es passa el ratolí per sobre.
4. Fes una galeria d’imatges utilitzant CSS Grid.
5. Crea una targeta amb ombres i una transició que la faci augmentar de mida quan es passa el ratolí per sobre.
6. Dissenya un formulari estilitzat amb CSS i afegeix estats de focus als camps.

---

## 16. Altres Funcionalitats Avançades

### Variables de CSS
Permeten definir valors reutilitzables.
```css
:root {
  --main-color: #3498db;
}

div {
  background-color: var(--main-color);
}
```

### Exercici
Defineix una variable per al color principal i utilitza-la en diversos elements.

## 17. Ús de Colors Principals per Crear Diferents Temes amb CSS

CSS utilitza els colors principals per personalitzar i crear diferents temes amb un enfocament reutilitzable i coherent. Això es pot aconseguir a través de **variables CSS**, que permeten definir colors com valors reutilitzables, i després aplicar-los als elements d'una pàgina.

### Exemple bàsic: Variables CSS per temes
```css
:root {
  --primary-color: #3498db; /* Blau clar */
  --secondary-color: #2ecc71; /* Verd clar */
  --background-color: #f0f0f0; /* Gris clar */
  --text-color: #333333; /* Gris fosc */
}

body {
  background-color: var(--background-color);
  color: var(--text-color);
}

button {
  background-color: var(--primary-color);
  color: white;
  border: none;
  padding: 10px 15px;
  cursor: pointer;
}

button.secondary {
  background-color: var(--secondary-color);
}
```

### Exemple avançat: Canvi de tema amb JavaScript
Amb CSS, es poden definir temes diferents i utilitzar JavaScript per canviar-los dinàmicament.

```css
:root {
  --primary-color: #3498db;
  --secondary-color: #2ecc71;
  --background-color: #f0f0f0;
  --text-color: #333333;
}

[data-theme="dark"] {
  --primary-color: #1abc9c;
  --secondary-color: #9b59b6;
  --background-color: #2c3e50;
  --text-color: #ecf0f1;
}

body {
  background-color: var(--background-color);
  color: var(--text-color);
}

button {
  background-color: var(--primary-color);
  color: white;
}
```

```javascript
document.getElementById('themeToggle').addEventListener('click', () => {
  const currentTheme = document.documentElement.getAttribute('data-theme');
  if (currentTheme === 'dark') {
    document.documentElement.setAttribute('data-theme', 'light');
  } else {
    document.documentElement.setAttribute('data-theme', 'dark');
  }
});
```

```html
<button id="themeToggle">Canvia el tema</button>
```

### Avantatges d'aquest enfocament
- Consistència: Les variables asseguren que els colors siguin coherents a tota la pàgina.
- Reutilització: Les variables es poden utilitzar a diversos elements, estalviant repetició.
- Personalització: És fàcil ajustar els valors de les variables per crear temes nous o respondre a les preferències dels usuaris.
- Interactivitat: La combinació amb JavaScript permet als usuaris canviar entre temes (ex., tema clar i fosc).
Aquest mètode permet als desenvolupadors oferir una experiència personalitzada i estilitzada per als usuaris, mantenint el codi fàcil de gestionar.

