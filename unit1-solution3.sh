#!/bin/sh
alias m="mkdir -p -m"
alias cm="chmod -c"
alias scm="sudo chmod -c"
alias co="sudo chown -c"
u=unit1exercise3
m 775 $u
cd $u
m 764 anwarftest
m 4650 einrauchen
m 405 einrabarber
m 4245 zersetzt/ausgekrauen
m 641 auswitzte/angeschmecktest
l=zerrabarbt/angerabarbs 
m 4723 $l/bestehkeit
m 4274 $l/bekraus
m 732  $l/anfahren
cm 432 $l
h=aufgetritttete/aufgefahrtete 
m 755 $h
m 251 $h/aufgewitzung
m 4024 $h/ausgehaltheit
m 4756 $h/aufrennt
i=angetrittst/versprachst
m 620 $i/gepflumse
cm 4337 zersetzt
cm 460 zerrabarbt
cm 4071 auswitzte
cm 4354 angetrittst
cm 4727 $i
cm 4016 $h
cm 230 aufgetritttete
co proxy:dip anwarftest
co uucp:proxy einrauchen
co proxy:mail angetrittst
co mail:proxy $i
co mail:fax $i/gepflumse
co student:dip einrabarber
co news:dip $h/aufgewitzung
co proxy:news $h/ausgehaltheit
co news:uucp $h/aufrennt
co news:mail aufgetritttete
co games:voice $h
co student:news auswitzte/angeschmecktest
co mail:audio auswitzte
co games:student $l/bestehkeit
co nobody:floppy $l/bekraus
co mail:student $l/anfahren
co mail:mail $l
co uucp:dip zerrabarbt
co mail:uucp zersetzt/ausgekrauen
co uucp:dip zersetzt
cd ..
co student:student $u
sudo tar zcf unit1-solution3.tgz unit1exercise3
