## Basic PowerShell commands
```
ls | where {$_.Extension -eq "csv"}
ls | sort -reverse { $_.Name }

Get-Process | sort -reverse { $_.Name }
Get-Process | where { $_.Id -gt 1000 } | ForEach-Object {$_.Id} | measure -all

get-alias | where { $_.Name -like "rv*" }
>Get-PSDrive
>Get-ChildItem | sort -descending { $_.CreationTime } | select -first 5
$notes | foreach { $_.Nota = [int]$_.nota }

$file | Format-Table -Property Name,Length,Importance

$alumnes | foreach { Add-Member -InputObject $_ -MemberType NoteProperty -Name 'Importance' -Value 10 }
$alumnes | foreach {Add-Member -InputObject $_ -MemberType NoteProperty -Name 'Sum2' -Value ($_.Física + $_.Química)

Get-Content "C:\start.csv" | select -First 10 | Out-File "C:\stop.csv"

```

