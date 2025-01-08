w32tm /config /syncfromflags:"MANUAL" /manualpeerlist:"0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org" /update
w32tm /resync
pause
