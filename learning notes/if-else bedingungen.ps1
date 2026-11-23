# Syntax:
if - Schüsselwort
() - Klammern für Bedingung
{} - Klammern für Code

# Beispiel: Script, sodass ein Benutzerkonto von Kollegen (Max Muster) überprüft wird:
$KontoStatus = "Aktiv"
if ($Kontostatus -eq "Gesperrt") {
Unlock-ADAccount -Login "mmuster"
}
else {
Write-Host "Das Konto ist bereits aktiv und soll nicht entsperrt werden."
}
# WICHTIG: Statt = nutzt man da die Abkürzungen wie -eq, -gt u.s.w.

# Noch ein Beispiel, wo man einen Überwachungsscript für den Programm auf dem Server schreiben muss. Z.B. für Chrome:
# Wenn Chrome zu viel Arbeitsspeicher verbraucht, wird eine Warnung erscheinen:
$ChromeArbeitsspeicher = (Get-Process -Name "chrome").WS
if ($ChromeArbeitsspeicher -gt 500MB) {
Write-Host "WARNUNG: Chrome verbraucht zu viel Arbeitsspeicher!"
}
else {
Write-Host "Alles gut, Google Chrome verhält sich normal."
}
