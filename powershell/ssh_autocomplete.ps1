using namespace System.Management.Automation

$script = {
  param($wordToComplete)    

  Get-Content ${Env:HOMEPATH}\.ssh\config `
    | Select-String -Pattern "^Host " `
    | ForEach-Object { $_ -replace "host ", "" -split " " } `
    | Sort-Object -Unique `
    | Where-Object { $_ -like "$wordToComplete*" } `
    | ForEach-Object { "$_" }
}

Register-ArgumentCompleter -CommandName ssh,scp,sftp -ScriptBlock $script
