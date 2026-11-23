Invoke-Command
# Dieser Befehl erlaubt die PowerShell-Befehle von einem Admin PC unsichtbar und direkt im Hintergrund auf einem Device im Firmanetzwerk ausführen.
# Das nutzt man mit dieser Struktur:

Invoke-Command -Computername "Name" -ScriptBlock { "Befehl" }

# Zum Beispiel
Invoke-Command -computerName "PCMarketing-01" -Scriptblock { Get-Process }

# Noch ein Beispiel
# Man muss den auf dem Computer mit dem Name "PC-Vertrieb-05" ein Programm stoppen, weil das PC viel langsamer geworden ist:
Invoke-Command -Computername "PC-Vertrieb-05" -CommandBlock { Stop-Process -Name "chrome" }
