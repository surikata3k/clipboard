# Ubuntu Install Samba Script

```bash
sudo apt update
sudo apt install samba

mkdir /home/<username>/sambashare/

sudo nano /etc/samba/smb.conf

# At the bottom of the file, add the following lines:

[sambashare]
    comment = Samba on Ubuntu
    path = /home/username/sambashare
    read only = no
    browsable = yes

# Restart Samba service
sudo service smbd restart

# Add exception to firewall
sudo ufw allow samba

# Add Samba user
sudo smbpasswd -a username
```
    