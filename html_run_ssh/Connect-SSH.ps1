# Script: Connect-SSH.ps1
# Ús: .\Connect-SSH.ps1 -Uri "ssh://user@192.168.1.3/"

# Check if at least one argument is provided
if ($args.Count -lt 1) {
    Write-Host "Error: No arguments provided."
    Write-Host "Usage: .\GetFirstArgument.ps1 <argument1>"
    exit 1
}

# Get the first argument
$Uri = $args[0]


# Validar que l'URI tingui el format correcte
if ($Uri -notmatch '^ssh://([\w\-]+)@([\d\.]+)/?$') {
    Write-Host "Error: L'URI no té el format correcte. Exemples vàlids: ssh://user@192.168.1.3/" -ForegroundColor Red
    exit 1
}

# Extreure l'usuari i la IP
$User = $Matches[1]
$IP = $Matches[2]

Write-Host "Usuari: $User"
Write-Host "IP: $IP"

# Comanda SSH
$Command = "ssh $User@$IP"

Write-Host "Executant: $Command"
Start-Process -FilePath "powershell.exe" -ArgumentList "-NoExit", "-Command", $Command
