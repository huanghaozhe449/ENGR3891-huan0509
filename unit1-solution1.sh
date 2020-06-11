#!/bin/sh
alias m="mkdir -p -m"
alias cs="sudo chmod -c"
alias c="chmod -c"
m 775 unit1exercise1
cd unit1exercise1
l=verkaesen/aufwarftest
m 205 $l/aufgerennung
c 507 $l
c 774 verkaesen

m 660 enhundst
m 003 bepflumheit
m 072 zersinnse
m 316 besprachst
m 400 verrabarbst

h=auswitzer/aufgerabarbt
m 336 $h/befahrt
m 162 $h/einkrauen
c 762 $h
j=auswitzer/angewarfen
m 002 $j/aufgesetzheit
c 002 $j
k=auswitzer/angetraust
m 231 $k/auspflumse
c 446 $k
c 500 auswitzer

e=zertritter/aufklettheit
m 212 $e/angerabarbheit
m 572 $e/angekrauung
c 367 $e
c 626 zertritter


cd ..
sudo tar zcf unit1-solution1.tgz unit1exercise1
