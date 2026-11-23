# Wenn bei einem PowerShell Script ein Fehler passiert, erscheint ein Fehler. Dafür verwendet man try / catch, um diese Fehler zu kontrollieren.
try {...} - in Klammern steht ein Befehl, der potenziell schiefgehen kann.
catch {...} - das wird ausgeführt nur wenn im try-Block ein Fehler passiert.

# Beispiel: Wenn man einen AD Account entsperren muss, für den Fall, wenn Kollege falschen Login geschickt hat, kann man einen Script mit try / catch schreiben:
try {
Unlock-ADAccount -Identity "mmusterr" -ErrorAction Stop
Write-Host "Konto wurde erfolgreich entsperrt."
}
catch {
Write-Host "Fehler: Konto konnte nicht gefunden oder entsperrt werden."
}
#Wenn Login richtig ist, wird das Konto entsperrt, aber wenn ein Fehler passiert, wird Befehl gestoppt und ein Text mit dem Fehler erscheinen.

Get-Date - Datum.
Add-Content - man hängt eine Textzeile an log-Datei an.
-ForegroundColor - ändert die Farbe vom "Write-Host" Befehl.

# Zusätzliches Beispiel:
$Zeit = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content -Path "C:\Logs\Helpdesk.log" -Value "$Zeit - Prozess erfolgreich gestoppt"
