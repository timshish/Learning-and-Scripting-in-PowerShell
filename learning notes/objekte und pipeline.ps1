# Befehl, um alle Prozesse auf dem Device zu zeigen:
Get-Process

# Mit dem Pipeline kann man den Befehl genauer machen, z.B. mit Sort-Object kombinieren.
Get-Process | Get-Object ... (z.B. Get-Process | Get-Object CPU)
# Auch man kann das aufsteigend oder absteigend machen:
Get-Process | Sort-Object WS -Descending (zeigt die Prozesse absteigend, die den Arbeitsspeicher verbrauchen)
######################
# Auch kann man sehr leicht die Daten filtern:
Get-Process | Where-Object Name -eq "(Name vom Objekt)"

# Zum Beispiel:
Get-Process | Where-Object Name -eq "Settings"

# Man kann das nach verschiedene Aspekte sortieren:
Get-Process | Where-Object WS -ge 500MB (Zeigt nur die Prozesse, die mehr *oder gleich* Arbeitsspeicher benutzen, in diesem Fall mehr oder gleich als 500MB)

# Sodass es die Prozesse grösser, glech oder weniger als etwas zeigt, nutzt man:
-eq - equal
-gt - greater than
-lt - less than
-ne - not equal
-ge - greater or equal
-le - less or equal
-like - findet etwas ähnliches (Beispiel: Get-Process | Where-Object -like "*Word*"; findet Microsoft Word)
######################
