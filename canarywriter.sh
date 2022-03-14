#!/bin/bash
echo "
█▀▀ ▄▀█ █▄░█ ▄▀█ █▀█ █▄█ █░█░█ █▀█ █ ▀█▀ █▀▀ █▀█
█▄▄ █▀█ █░▀█ █▀█ █▀▄ ░█░ ▀▄▀▄▀ █▀▄ █ ░█░ ██▄ █▀▄"
echo "\nCreated by DELVES Media Group | delvesmediagroup.com"
echo "\n"

sleep 1

echo -n "[CW] When was the last canary statement created? (e.g 1st April 2021) `echo $'\n> '`"
read userInput
if [[ -n "$userInput" ]]
then
    clu=$userInput
fi

echo -n "[CW] When will the next canary be created? (e.g 1st April 2023) `echo $'\n> '`"
read userInput
if [[ -n "$userInput" ]]
then
    cnu=$userInput
fi

sleep 1

echo "[CW] Generating canary for `date +%d-%m-%Y`..."
cat >canary-`date +%d-%m-%Y`.txt <<EOF



CANARY STATEMENT
===================================================
Issued for : `date +%d` `date +%B` `date +%Y`.
Last updated : $clu
Next update on : $cnu
===================================================
What are canary statements?
https://en.wikipedia.org/wiki/Warrant_canary
https://www.eff.org/deeplinks/2014/04/warrant-canary-faq
===================================================
Don't trust this statement blindly, verify the signature of this file!
===================================================


Signers
~~~~~~~~~~~~~

`cat signers.txt`


Proof of Freshness
~~~~~~~~~~~~~~~~~~~~

Date and time whem this file was generated:

`date -R -u`


Headlines from: https://www.reutersagency.com/feed/

`rsstail -1 -n5 -N -u https://www.reutersagency.com/feed/`


Headlines from: https://www.theguardian.com/world/rss

`rsstail -1 -n5 -N -u https://www.theguardian.com/world/rss`




Statements
~~~~~~~~~~~~~

`cat statement.txt`


Special Announcements
~~~~~~~~~~~~~~~~~~~~~~~~

`cat announcements.txt`




EOF
echo "[CW] Canary generated!"
sleep 1
echo "[CW] Now signing..."
gpg --output canary-`date +%d-%m-%Y`-signed.txt --clearsign canary-`date +%d-%m-%Y`.txt
sleep 1
echo "[CW] Deleting unsigned canary..."
rm canary-`date +%d-%m-%Y`.txt
sleep 1
echo "[CW] Signed canary statement ready! You can now distribute canary-`date +%d-%m-%Y`-signed.txt"