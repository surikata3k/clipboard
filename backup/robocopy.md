[Robocopy docs](https://learn.microsoft.com/es-es/windows-server/administration/windows-commands/robocopy)


# INSTRUCCIONS DE LA TASCA:
## PAS 1 – Ús bàsic amb filtres per tipus de fitxer
Crea la carpeta C:\Usuari_Treball amb subcarpetes: Documents, Fotos, Projectes.

Omple aquestes carpetes amb fitxers diversos: .docx, .pdf, .jpg, .exe, etc.

Fes una còpia només dels fitxers .docx i .pdf a D:\Backup_Treball:

## PAS 2 – Excloure fitxers i carpetes
Exclou el fitxer manual.docx i la carpeta Fotos de la còpia:


## PAS 3 – Filtrar per mida de fitxer
Crea fitxers grans i petits dins C:\Usuari_Treball.

### Fes una còpia només dels fitxers menors de 5 MB:

### Fes una còpia només dels fitxers majors de 10 MB:

## PAS 4 – Tolerància a errors i intents repetits
Simula errors (fitxers bloquejats o carpetes de xarxa falses). (notepad >filetolock)

Prova la comanda següent amb només 3 intents i 2 segons d’espera:

## PAS 5 – Filtra la sortida del log
Fes una còpia amb la sortida simplificada al log:

## PAS 6 – Crea un script .bat professional
Obre el Bloc de notes i escriu aquest contingut:

``` bat
@echo off
set ORIGEN=C:\Usuari_Treball
set DESTI=D:\Backup_Treball
set LOG=D:\log_complet.txt

robocopy %ORIGEN% %DESTI% *.docx *.pdf /E /MIR /Z /R:2 /W:2 /XF secret.docx /XD Temporal Fotos /LOG:%LOG%

echo Còpia realitzada. Consulta el log a %LOG%
pause
```
Desa el fitxer com backup_complet.bat

Executa’l i comprova el resultat.

# ENTREGA DE LA TASCA:
L’script backup_complet.bat

Els fitxers de log següents: 
log_tipus.txt
log_exclusions.txt
log_mida.txt
log_grans.txt
log_errors.txt
log_filtrat.txt
log_complet.txt
