echo "#### Start ####"
git log > logfile.txt
Monday=$(egrep "Date:   Mon" logfile.txt | wc -l)
Tuesday=$(egrep "Date:   Tue" logfile.txt | wc -l)
Wednesday=$(egrep "Date:   Wed" logfile.txt | wc -l)
Thursday=$(egrep "Date:   Thu" logfile.txt | wc -l)
Friday=$(egrep "Date:   Fri" logfile.txt | wc -l)
Saturday=$(egrep "Date:   Sat" logfile.txt | wc -l)
Sunday=$(egrep "Date:   Sun" logfile.txt | wc -l)

if [[ $Monday -gt $Tuesday ]] && [[ $Monday -gt $Wednesday ]] && [[ $Monday -gt $Thursday ]] && [[ $Monday -gt $Friday ]] && [[ $Monday -gt $Saturday ]] && [[ $Monday -gt $Sunday ]]
	then
	echo Monday
elif [[ $Tuesday -gt $Wednesday ]] && [[ $Tuesday -gt $Thursday ]] && [[ $Tuesday -gt $Friday ]] && [[ $Tuesday -gt $Saturday ]] && [[ $Tuesday -gt $Sunday ]]
	then
	echo Tuesday
elif [[ $Wednesday -gt $Thursday ]] && [[ $Wednesday -gt $Friday ]] && [[ $Wednesday -gt $Saturday ]] && [[ $Wednesday -gt $Sunday ]]
	then 
	echo Wednesday
elif [[ $Thursday -gt $Friday ]] && [[ $Thursday -gt $Saturday ]] && [[ $Thursday -gt $Sunday ]]
	then
	echo Thursday
elif [[ $Friday -gt $Saturday ]] && [[ $Friday -gt $Sunday ]]
	then
	echo Friday
elif [[ $Saturday -gt $Sunday ]]
	then
	echo Saturday
else
	echo Sunday
fi
	echo "#### End ####"