### View services
systemctl list-unit-files --type service -all

### View iptables rules
iptables -L --line-numbers

### Install Samba on Ubuntu
$sudo apt update
$sudo apt install samba

$mkdir /home/user/public/

$sudo nano /etc/samba/smb.conf



-------------------
[global] 
  protocol = SMB3
  restrict anonymous = 2


  client min protocol = SMB3
  server min protocol = SMB3

[public]
    comment = Samba on Ubuntu
    path = /home/user/public
    read only = no
    browsable = yes
--------------------

$sudo service smbd restart

$sudo ufw allow samba

$sudo smbpasswd -a user

$\\IP\public

