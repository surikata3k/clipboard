# Pràctica de Backup Remot sobre Linux

## Objectiu

Aprendre a fer còpies de seguretat de fitxers i directoris a un **servidor remot** mitjançant `rsync` sobre SSH, i automatitzar-les amb `cron`.

---

## Part 1: Preparació de l'entorn local

1. Crear un directori amb dades de prova:

   ```bash
   mkdir -p ~/backup_remot/original
   echo "Fitxer local 1" > ~/backup_remot/original/f1.txt
   echo "Fitxer local 2" > ~/backup_remot/original/f2.txt
   ```

2. Suposar que tens accés a un servidor remot (`usuari@10.0.0.10`) i preparar el directori:

   ```bash
   ssh usuari@10.0.0.10 'mkdir -p ~/backups'
   ```

---

## Part 2: Configura l’autenticació amb clau pública

1. Generar una clau si no existeix:

   ```bash
   ssh-keygen -t rsa -b 4096
   ```

2. Copiar la clau pública al servidor remot:

   ```bash
   ssh-copy-id usuari@10.0.0.10
   ```

3. Verificar que pots accedir sense contrasenya:

   ```bash
   ssh usuari@10.0.0.10
   ```

---

## Part 3: Fer backup amb `rsync` a través d’SSH

1. Fer una còpia de seguretat completa:

   ```bash
   rsync -avz -e ssh ~/backup_remot/original/ usuari@10.0.0.10:~/backups/backup_remot/
   ```

2. Simular un canvi i tornar a executar `rsync`:

   ```bash
   echo "Nova línia" >> ~/backup_remot/original/f1.txt
   rsync -avz -e ssh ~/backup_remot/original/ usuari@10.0.0.10:~/backups/backup_remot/
   ```

---

## Part 4: Automatització amb `cron`

1. Obrir el crontab:

   ```bash
   crontab -e
   ```

2. Afegir una línia per fer el backup cada dia a les 3:00 AM:

   ```
   0 3 * * * rsync -az -e ssh ~/backup_remot/original/ usuari@10.0.0.10:~/backups/backup_remot/
   ```

---

## Part 5: Gestió de versions (opcional)

Fer backups amb data per tenir versions històriques:

```bash
DATE=$(date +%F)
rsync -az -e ssh ~/backup_remot/original/ usuari@10.0.0.10:~/backups/$DATE/
```

### Script recomanat: `backup_remot.sh`

```bash
#!/bin/bash
REMOTE_USER=usuari
REMOTE_HOST=10.0.0.10
REMOTE_DIR=~/backups/$(date +%F)
LOCAL_DIR=~/backup_remot/original/

rsync -az -e ssh "$LOCAL_DIR" "${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}"
```

Fes-lo executable:

```bash
chmod +x backup_remot.sh
```

---

## Preguntes per reflexionar

- Quins avantatges té fer backups remots respecte als locals?
- Quins riscos implica fer backups sense xifrar la connexió?
- Com pots assegurar que els backups es completen correctament?
