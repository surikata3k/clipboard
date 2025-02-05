A continuació, et presento una sèrie d'exercicis progressius per practicar les propietats de posicionament en CSS amb divs. Aquests exercicis et permetran comprendre millor position: static, position: relative, position: absolute, position: fixed i position: sticky, així com la interacció amb top, right, bottom, left i z-index.

## Exercici 1: Posicionament estàtic (Static)

Objectiu: Entendre el comportament per defecte dels elements.
HTML:

```html
<div class="contenidor">
  <div class="element estatic">Element estàtic 1</div>
  <div class="element estatic">Element estàtic 2</div>
</div>
```

CSS:
  
```css
.contenidor {
  width: 300px;
  border: 1px solid black;
  padding: 10px;
}

.element {
  padding: 10px;
  margin-bottom: 5px;
  background-color: lightgray;
}

.estatic {
  position: static; /* Per defecte, no cal especificar */
}
```

### Tasques:
- Observa com els elements es disposen verticalment un darrere l'altre, seguint el flux normal del document.
- Intenta aplicar top, right, bottom o left a .estatic. Veureu que no tenen cap efecte.
  
## Exercici 2: Posicionament relatiu (Relative)

Objectiu: Desplaçar un element respecte a la seva posició original.
HTML: (El mateix que l'exercici 1)
CSS:
  
```CSS
/* ... (CSS de l'exercici 1) */
.relatiu {
  position: relative;
  top: 20px;
  left: 30px;
  background-color: lightblue;
}
```

### Tasques:
- Afegeix la classe relatiu al segon div.
- Observa com l'element es desplaça 20px cap avall i 30px a la dreta respecte a la seva posició original.
- Nota que l'espai que ocupava originalment l'element es manté reservat.

## Exercici 3: Posicionament absolut (Absolute)

Objectiu: Treure un element del flux del document i posicionar-lo respecte al seu ancestre posicionat més proper.
HTML:
  
```HTML
<div class="contenidor posicio-relativa">
  <div class="element">Element 1</div>
  <div class="element absolut">Element absolut</div>
</div>
```

CSS:

```CSS
/* ... (CSS bàsic) */
.posicio-relativa {
  position: relative; /* Important per a l'absolut */
  height: 200px; /* Per visualitzar millor l'efecte */
}

.absolut {
  position: absolute;
  top: 50px;
  right: 10px;
  background-color: lightcoral;
}
```

### Tasques:
- Afegeix la classe absolut al segon div.
- Observa com l'element es posiciona respecte al contenidor (.contenidor), ja que té position: relative.
- Prova a treure position: relative de .contenidor. L'element absolut es posicionarà respecte al body.


## Exercici 4: Superposició amb z-index

Objectiu: Controlar l'ordre de superposició dels elements.
HTML:

```HTML

<div class="contenidor posicio-relativa">
  <div class="element absolut z1">Element absolut 1 (z-index: 1)</div>
  <div class="element absolut z2">Element absolut 2 (z-index: 2)</div>
</div>
```

CSS:
  
```CSS

/* ... (CSS anterior) */
.z1 {
  z-index: 1;
  background-color: lightgreen;
  top: 20px;
  left: 20px;
}

.z2 {
  z-index: 2;
  background-color: lightyellow;
  top: 40px;
  left: 40px;
}
```

### Tasques:
- Observa com l'element amb z-index: 2 se superposa a l'element amb z-index: 1.
- Prova a canviar els valors de z-index.

## Exercici 5: Posicionament fix (Fixed)

Objectiu: Mantenir un element en una posició fixa a la finestra del navegador, fins i tot quan es fa scroll.
HTML:

```HTML
<div class="fixe">Element fix</div>
<div class="contingut-llarg">
  <p>Molt de text...</p>
  </div>
```

CSS:
```CSS

.fixe {
  position: fixed;
  top: 10px;
  right: 10px;
  background-color: lightpink;
  padding: 10px;
}

.contingut-llarg {
  height: 2000px; /* Força el scroll */
}
```

### Tasques:
Fes scroll a la pàgina. Observa com l'element amb position: fixed es manté en la mateixa posició.

## Exercici 6: Posicionament enganxós (Sticky)

Objectiu: Combinar comportament relatiu i fix. L'element es comporta com a relatiu fins que se supera un cert punt de scroll, moment en què es converteix en fix.
HTML:

```HTML
<div class="enganxos">Element enganxós</div>
<div class="contingut-llarg">
  <p>Molt de text...</p>
  </div>
```
  
CSS:

```css
.enganxos {
  position: sticky;
  top: 0; /* Punt on es "enganxa" */
  background-color: lightseagreen;
  padding: 10px;
}

.contingut-llarg {
  height: 2000px; /* Força el scroll */
}
```

### Tasques:
- Fes scroll a la pàgina. Observa com l'element es manté en el flux normal fins que arriba a la part superior de la finestra, moment en què es "enganxa" i es comporta com a fix.
- Aquests exercicis et proporcionen una base sòlida per comprendre el posicionament en CSS. Experimenta amb diferents valors i combina les propietats per aconseguir els resultats desitjats. Recorda que la pràctica constant és clau per dominar aquests conceptes.





