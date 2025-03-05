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

Access to [http://127.0.0.1:8080](http://127.0.0.1:8080)


![image](https://github.com/user-attachments/assets/5634d17f-6edc-44fc-8fb9-29eeed4ee365)

![image](https://github.com/user-attachments/assets/363c1909-38b6-4439-845f-1dba3a68c116)

![image](https://github.com/user-attachments/assets/839d6d8f-81ce-4418-86db-cc8683d7dfc2)

![image](https://github.com/user-attachments/assets/05d9f097-e5ba-468f-9a22-3f3061b999fb)


