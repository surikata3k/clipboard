$Server = Read-Host -Prompt 'Input your server ip'
$User = Read-Host -Prompt 'Input the user name'



type $env:USERPROFILE\.ssh\id_rsa.pub | ssh "$User@$Server" "cat >> .ssh/authorized_keys"