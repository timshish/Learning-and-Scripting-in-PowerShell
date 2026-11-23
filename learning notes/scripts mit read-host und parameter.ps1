Read-Host
# Diesen Befehl nutzt man, um ohne schwere Befehle die meisten Aufgaben zu erledigen.

# Wie zum Beispiel das Beispiel mit Chrome aus File "invoke.command.ps1". Um dieses Prozess zu erleichtern, kann man einen Prompt erstellen, der den Programm schließt, den Mitarbeiter eingegeben hat:
$Prozess-Name = Read-Host -Prompt "Bitte geben Sie den Namen des abstürzenden Programms ein"
# Da nutzt man auch die Variablen mit dem Zeichen $

# Das Script nutzt die Variable, um den Programm zu beenden:
Stop-Process -Name $Prozess-Name

# Als Beispiel ein Script, sodass ein Konto von den Mitarbeiter in AD entsperrt wird:
$BenutzerKuerzel = Read-Host -Promt "Welches Konto soll entsperrt werden?"
Unlock-ADAccount -Identity $BenutzerKuerzel

# Im Vergleich mit Read-Host, der startet und wartet auf Benutzereingabe, gibt es noch ein Script:
Param()
# Es hat schon alle Benutzerdaten und wird automatisch und schnell fertig.

# Beispiel: Wie es im Beispiel mit Read-Host war, kann auch mit Parameter gemacht werden:
Param(
$BenutzerKuerzel
)
Unlock-ADAccount -Identity $Benutzerkuerzel 
