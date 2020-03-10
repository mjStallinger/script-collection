@echo off
:: try stopping the service
net stop %1
sleep 5
:: force the service to stop ;)
taskkill /f /FI "SERVICES eq %1"
:: (re-)start the service
net start %1
