# Generate key pair
ssh-keygen.exe


# Powershell to copy public key to server
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh "user@192.168.1.1" "cat >> .ssh/authorized_keys"
