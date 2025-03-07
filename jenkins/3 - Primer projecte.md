### Crear un projecte i compilar-lo amb Python

## Primer crearem una calculadora amb Python.
Hem der fer una aplicació amb Python que contingut 4 mètodes, sumar, restar, dividir i multiplicar.
També hem de fer els tests pels 4 mètodes

Aquí tens un exemple [https://github.com/surikata3k/calc_python](https://github.com/surikata3k/calc_python)

## Crear el repositori a GitHub
El segon pas és crear el repositori a GitHub i pujar-hi el codi.
Res que el repositori sigui públic.

## Ara ja podem automatitzar la compilació, per aixó:
Crea un projecte nou a jenkins
![image](https://github.com/user-attachments/assets/fc9548de-aafb-4de4-af58-62508a77a27b)

Has de configurar el **Source Code Management** per a que es descarregui el codi del repositori de GitHub de la branca */main

Els Build Steps que has d'executar son els següents: un per compilar i un altre per executar els tests.
> python3 -m py_compile calculator.py

> python3 -m unittest test_calculator.py

Quan estigui tot configurat proba d'executar la tasca.

![image](https://github.com/user-attachments/assets/2315cb07-51bd-4cbf-a0a3-b63553bedf94)

## Builds
En aquest apartat pots consultar les execucions i el detall de cadascuna d'elles.

![image](https://github.com/user-attachments/assets/cafa7254-88c9-4492-b093-c170f54f26cb)

