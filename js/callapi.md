```
<!DOCTYPE html>
<html lang="ca">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversor Euro a Dòlar</title>
</head>
<body>
    <h1 id="exchangeRate">Prem el botó per obtenir el canvi</h1>
    <button onclick="getExchangeRate()">Obtenir canvi</button>

    <script>
        async function getExchangeRate() {
            try {
                const response = await fetch('https://api.exchangerate-api.com/v4/latest/EUR');
                const data = await response.json();
                const rate = data.rates.USD;
                document.getElementById('exchangeRate').innerText = `1 EUR = ${rate} USD`;
            } catch (error) {
                document.getElementById('exchangeRate').innerText = 'Error en obtenir el canvi';
            }
        }
    </script>
</body>
</html>
```
