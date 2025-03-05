# Install Jenkins

On ubuntu 22.04

```
apt update
apt upgrade
```
Install Java JDK 17
```
apt-get install openjdk-17-jdk
```
```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
```
Finally install Jenkins
```
sudo apt-get update
sudo apt-get install jenkins
```

Access to (http://127.0.0.1:8080)[http://127.0.0.1:8080]
