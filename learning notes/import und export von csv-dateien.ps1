# Um eine CSV Datei mit Daten erstellen oder lesen, nutzt man:

Export-CSV - erstellt eine CSV-Datei
# Es ist auch empfohlen, mit Encoding zu exportieren, sodass ä, ö, ü auch lesbar werden. Dafür nutzt man:
-Encoding UTF8

Import-CSV - importiert eine CSV-Datei

# Beispiel:
Get-Process | Export-CSV -Path "C:\Prozesse.csv"
# Die Prozesse werden als eine Tabelle gespeichert

Import-CSV -Path "C:\Prozesse.csv" | ForEach-Object { Restart-Computer -ComputerName $_.PCName }
# startet die Computer aus der Spalte "PCName" automatisch neu

#Anderes Beispiel: Gegeben die Situation, wo wegen der Netwerksfehler in der Firma viele Mitarbeiter mehrmals falschen Passwort eingegeben haben. Es gibt eine CSV Datei mit den Logins von gesperrten Konten. Um zu entsperren:
Import-csv -Path "C:\GesperrteUser.csv" | ForEach-Object { Unlock-ADAccount -Identity $_.Login }
