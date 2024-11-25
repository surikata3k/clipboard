mkdir -p /share/public_files
mkdir /share/private_files
ls -l /
ls -l /share/
groupadd --system smbgroup
cat /etc/group
useradd --system --no-create-home --group smbgroup -s /bin/false smbuser
cat /etc/passwd
chown -R smbuser:smbgroup /share
ls -l /
ls -l /share/
chmod -R g+w /share
ls -l
ls -l /
ls -l /share/
systemctl restart smbd
systemctl status smbd
