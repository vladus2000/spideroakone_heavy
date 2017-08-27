/fixuser.sh evil
/unevil.sh
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
