sudo apt update
sudo apt install samba

mkdir /home/<username>/sambashare/

sudo nano /etc/samba/smb.conf

At the bottom of the file, add the following lines:

[sambashare]
    comment = Samba on Ubuntu
    path = /home/username/sambashare
    read only = no
    browsable = yes

Reiniciar el servei Samba
sudo service smbd restart

Afegir excepció al wirewall
sudo ufw allow samba

Afegir usuari
sudo smbpasswd -a username
