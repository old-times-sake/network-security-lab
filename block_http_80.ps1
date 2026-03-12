# Skrypt blokujący ruch przychodzący na porcie 80 (HTTP) 
[cite_start]New-NetFirewallRule -DisplayName "PS_Blokada_HTTP_80" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Block
