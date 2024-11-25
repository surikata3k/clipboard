## Basic PowerShell commands
```
ls | where {$_.Extension -eq "csv"}
ls | sort -reverse { $_.Name }

Get-Process | sort -reverse { $_.Name }
Get-Process | where { $_.Id -gt 1000 } | ForEach-Object {$_.Id} | measure -all
```

