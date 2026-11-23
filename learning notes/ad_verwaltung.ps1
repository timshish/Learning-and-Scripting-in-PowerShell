# Befehle für AD (Active Directory):
Get-ADUser - Benutzerdaten abfragen
Add-ADuser - neuen Benutzer in AD anlegen
Set-ADUSer - Daten bearbeiten, etw hinzufügen
Unlock-ADUser - Konto entsperren
Set-ADAccountPassword - Passwort ändern oder zurücksetzen

# Bespiel: Wenn man einen neuen User in AD anlegen will: 
New-ADUser -Name "Max Muster" -SamAccountName "mmuster"
# d.h. man hat den neuen User Max Muster mit dem login maxmuster erstellt
##################################
# Oder anders: Zuerst legt man die Daten von neuem Mitarbeiter an:
$Vorname = "Max"
$Nachname = "Muster"
$Fullname = "$Vorname $Nachname"
$Login = "mmuster"
$Abteilung = "Vertrieb"

-NewADUser -Name $Fullname -GivenName $Vorname -Surname $Nachname -SamAccountName $Login -Department $Abteilung -Enabled $true
# So werden Variablen mit dem Befehl kombiniert
