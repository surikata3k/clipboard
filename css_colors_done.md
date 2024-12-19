Aquí tens 10 exercicis sobre CSS i colors, amb diferents nivells de dificultat, per practicar i consolidar els teus coneixements:

### Nivell 1: Conceptes bàsics

1. Canvi de color de text i fons: Crea un paràgraf amb text negre sobre fons blanc. Utilitzant CSS, canvia el color del text a blau i el color de fons a groc clar.

HTML:
```HTML
<p>Aquest és un paràgraf.</p>
```

CSS (Solució):
```CSS
p {
    color: blue;
    background-color: lightyellow;
}
```

2. Ús de diferents formats de color: Crea tres divs. Aplica a cada un un color de fons diferent: un amb un nom de color (p. ex., red), un altre amb codi hexadecimal (p. ex., #00FF00), i el tercer amb RGB (p. ex., rgb(0, 0, 255)).

HTML:
```HTML
<div class="color1"></div>
<div class="color2"></div>
<div class="color3"></div>
```

CSS (Solució):
```CSS
.color1 { background-color: red; }
.color2 { background-color: #00FF00; }
.color3 { background-color: rgb(0, 0, 255); }
```

### Nivell 2: Combinació de colors i selectors

3. Estil d'enllaços amb hover: Crea un enllaç. Per defecte, ha de ser blau i sense subratllat. Quan el ratolí passi per sobre (:hover), ha de canviar a vermell i mostrar subratllat.

HTML:
```HTML
<a href="#">Enllaç</a>
```

CSS (Solució):
```CSS
a {
    color: blue;
    text-decoration: none;
}

a:hover {
    color: red;
    text-decoration: underline;
}
```

4. Estil de llistes amb colors alterns: Crea una llista no ordenada (ul). Utilitza CSS per aplicar un color de fons gris clar a les files parelles i un color blanc a les imparelles.

HTML:
```HTML
<ul>
    <li>Element 1</li>
    <li>Element 2</li>
    <li>Element 3</li>
    <li>Element 4</li>
</ul>
```

CSS (Solució):
```CSS
li:nth-child(even) { /* Files parelles */
    background-color: lightgray;
}

li:nth-child(odd) { /* Files imparelles */
    background-color: white;
}
```

### Nivell 3: Transparència i degradats

5. Ús d'opacitat: Crea un div amb una imatge de fons. Afegeix un altre div a sobre amb un color de fons negre i una opacitat del 50% per enfosquir la imatge.

HTML:
```HTML
<div class="imatge-fons">
    <div class="superposicio"></div>
</div>
```

CSS (Solució):
```CSS
.imatge-fons {
    background-image: url("imatge.jpg"); /* Reemplaçar amb una imatge real */
    width: 300px;
    height: 200px;
    position: relative; /* Important per posicionar la superposició */
}

.superposicio {
    background-color: black;
    opacity: 0.5;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
}
```

6. Creació d'un degradat lineal: Crea un div amb un degradat lineal que vagi del blau al verd.

HTML:

```HTML
<div class="degradat"></div>
```

CSS (Solució):
```CSS

.degradat {
    width: 300px;
    height: 100px;
    background: linear-gradient(to right, blue, green);
}
```
### Nivell 4: Colors en contexts més complexos

7. Botó amb efecte de degradat i hover: Crea un botó amb un degradat de fons i un efecte de canvi de color en passar el ratolí per sobre.

HTML:
```HTML
<button>Botó</button>
```

CSS (Solució):
```CSS
button {
    background: linear-gradient(to bottom, #4CAF50, #45a049); /* Degradat verd */
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background: linear-gradient(to bottom, #45a049, #3e8e41); /* Degradat verd més fosc */
}
```

8. Text amb ombra de color: Crea un encapçalament (h1) amb text blanc i una ombra de color negre lleugerament desplaçada.

HTML:
```HTML
<h1>Títol amb ombra</h1>
```

CSS (Solució):
```CSS
h1 {
    color: white;
    text-shadow: 2px 2px 4px #000000; /* Desplaçament horitzontal, vertical, difuminat, color */
}
```
