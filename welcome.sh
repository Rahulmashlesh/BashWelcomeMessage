## Experimental section and welcome msg ! :D

export smallDelay=0.01
export largeDelay=0.05
export welcomeMsg="Welcome to the lab Mr Rahul"
export knightsWatchOat="I am the coder in the darkness, the watcher of the console logs. I am the shield that guards the realms of men and women."

clear
echo "Night gathers, and now my watch begins..."
grep -o . <<<$knightsWatchOat | while read a
do
	    sleep 0.00000000000000001
	        echo -n "${a:- }"
	done
	echo " I pledge my life and honor to the Nights Watch. For this night and all the nights to come."
	echo ""
	echo ""

	echo "$ Initealizing sequence"
	sleep $smallDelay
	echo "$ Taking over as Kernel"
	sleep $smallDelay
	echo "$ All systems stand-by ..."
	sleep $smallDelay;echo ""
	echo "# This is Kernel taking over"
	sleep $largeDelay
	echo
	#clear

	grep -o . <<<$welcomeMsg | while read a
do
    # short random delay between keystrokes
        sleep 0.0$((RANDOM%5))
	    # make fake typo every 30th keystroke
	        if [[ $((RANDOM%30)) == 1 ]]
			    then
		            # print random character between a-z
			            printf "\\$(printf %o "$((RANDOM%26+97))")"
				            # wait a bit and delete it again
					            sleep 0.5; echo -ne '\b'; sleep 0.2
						        fi
							    # output a space, or $a if it is not null
							        echo -n "${a:- }"
							done
							echo""

