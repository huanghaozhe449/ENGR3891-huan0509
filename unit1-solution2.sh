#!/bin/sh
alias m="mkdir -p -m"
alias c="chmod -c"
alias cs="sudo chmod -c"
alias co="sudo chown -c"
m 775 unit1exercise2
cd unit1exercise2
m 603 verrennkeit
co news:floppy verrennkeit
m 353 besprachtest
co proxy:fax besprachtest
m 073 enpflums
co news:fax enpflums
m 653 aufgewarfs
co mail:floppy aufgewarfs
m 610 aushundheit
co news:student aushundheit
l=enpflumen/aufgesitzse
m 227 $l/zerraucher
co nobody:tape $l/zerraucher
c 173 $l
co news:cdrom $l
cd enpflumen/
m 243 beklettte
co mail:student beklettte
cd ..
c 012 enpflumen
co news:news enpflumen
h=angetritter/antrittung
m 444 $h/ankaeser
co games:dip $h/ankaeser
c 116 $h
co mail:student $h
cd angetritter
m 420 beschmeckung/aufkletts
cd beschmeckung
co proxy:floppy aufkletts
m 721 ausrauchheit
co nobody:cdrom ausrauchheit
m 323 ausgesprachs
co news:student ausgesprachs
cd ..
c 034 beschmeckung
co lp:audio beschmeckung
cd ..
c 507 angetritter
co news:tape angetritter
d=verklettt/aufwarfheit
m 337 $d/enwarfst
co games:tape $d/enwarfst
m 341 $d/bestehs
co news:fax $d/bestehs
c 725 $d
co proxy:voice $d
c 711 verklettt
co proxy:tape verklettt
cd ..
sudo tar zcf unit1-solution2.tgz unit1exercise2
