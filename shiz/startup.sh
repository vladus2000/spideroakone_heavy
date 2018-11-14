/fixuser.sh evil
/unevil.sh
if [[ ! -z "${PURGE}" ]]; then
        /runevilorroot.sh SpiderOakONE --purge-historical-versions $PURGE
fi
if [[ ! -z "${DELETE}" ]]; then
        /runevilorroot.sh SpiderOakONE --purge-deleted-items=$DELETE
fi
if [[ -x /customstartup.sh ]]; then
	/runit.sh
	/runevilorroot.sh /customstartup.sh
else
	/runevilorroot.sh SpiderOakONE --headless
fi
while true
do
	sleep 1h
done
