#!/bin/sh

test_filter() {
	#The function below takes two arguments, the first is the user input test specification, and the second is the serial number for the test.  The serial number is then run against one or both of two text files that sees if the serial number is listed as an unscored test or a unimportant scored test.  If the serial number is found, the function returns a 1, indicating that the test should not be run, if a zero is returned, then the test is given the green light to be run. 

	local test = $1
	shift
	local scored = $1
	shift
	local important = $1
	if [[ $test == "Scored_Only" || $test == "Important_Scored_Only" ]]; then
		if [[ $test == "Scored_Only" && $scored == "Yes" ]]; then
			echo 0
		fi
        	if [[ $test == "Important_SCored_Only" && $scored =="Yes" && $important == "Yes" ]]; then
			echo 0
		fi
	fi
	echo 1
#		while read -r line; do
#			if [[ $2 == $line ]]; then
#				echo 1
#			fi
#		done < "unscored_tests.txt"
#		if [[ $1 == "Scored_Only" ]]; then
#			echo 0
#		fi
#		if [[ $1 == "Important_Scored_Only" ]]; then	
#			while read -r line; do
#				if [[ $2 == $line ]]; then
#					echo 1
#				fi
#			done < "unimportant_scored_tests.txt"
#			echo 0
#		fi       
#	else
#		echo 0
#	fi
}

test_wrapper() {
	local ref=$1
	shift
	local msg=$1
	shift
	local score=$1
	shift
	local server=$1
	shift
	local workstation=$1

	RED='\033[0;31m'
	GREEN='\033[0;32m'
	YELLOW='\033[1;33m'
	NC='\033[0m'

	# -- count the totals for the baseline
	if [[ $score == 'Yes' ]]; then
		if [[ $server == 'Server1' ]]; then
			score_server1_total=$((score_server1_total+1))
		fi
		if [[ $server == 'Server1' || $server == 'Server2' ]]; then
			score_server2_total=$((score_server2_total+1))
		fi
		if [[ $workstation == 'Workstation1' ]]; then
			score_workstation1_total=$((score_workstation1_total+1))
		fi
		if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
			score_workstation2_total=$((score_workstation2_total+1))
		fi
	else
		if [[ $server == 'Server1' ]]; then
			noscore_server1_total=$((noscore_server1_total+1))
		fi
		if [[ $server == 'Server1' || $server == 'Server2' ]]; then
			noscore_server2_total=$((noscore_server2_total+1))
		fi
		if [[ $workstation == 'Workstation1' ]]; then
			noscore_workstation1_total=$((noscore_workstation1_total+1))
		fi
		if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
			noscore_workstation2_total=$((noscore_workstation2_total+1))
		fi
	fi

	if [[ -f ./test/${ref}.sh ]]; then
#	if [[ -f execute ]]; then
#		bash ./test/${ref}.sh ${args} > /dev/null 2>/dev/null
                execute ${args} > /dev/null 2>/dev/null
		if [[ "$?" -eq 0 ]]; then
			echo -e "${GREEN}PASS${NC} - $ref - ${msg}"

			# -- count the success for the baseline
			if [[ $score == 'Yes' ]]; then
				if [[ $server == 'Server1' ]]; then
					score_server1_ok=$((score_server1_ok+1))
				fi
				if [[ $server == 'Server1' || $server == 'Server2' ]]; then
					score_server2_ok=$((score_server2_ok+1))
				fi
				if [[ $workstation == 'Workstation1' ]]; then
					score_workstation1_ok=$((score_workstation1_ok+1))
				fi
				if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
					score_workstation2_ok=$((score_workstation2_ok+1))
				fi
			else
				if [[ $server == 'Server1' ]]; then
					noscore_server1_ok=$((noscore_server1_ok+1))
				fi
				if [[ $server == 'Server1' || $server == 'Server2' ]]; then
					noscore_server2_ok=$((noscore_server2_ok+1))
				fi
				if [[ $workstation == 'Workstation1' ]]; then
					noscore_workstation1_ok=$((noscore_workstation1_ok+1))
				fi
				if [[ $workstation == 'Workstation1' || $workstation == 'Workstation2' ]]; then
					noscore_workstation2_ok=$((noscore_workstation2_ok+1))
				fi
			fi
		else
			echo -e "${RED}FAIL${NC} - $ref - ${msg}"
		fi
	else
		echo -e "${YELLOW}SKIP${NC} - $ref - ${msg}"
	fi
}

if [[ $(whoami) != "root" ]]; then
	echo "You must run this script as root"
	exit 1
fi
echo "CIS CentOS Linux 7 Benchmark (v2.2.0 - 12-27-2017)"
echo
echo hostname : `hostname`
echo time     : `date`
test=$1
echo =================================================================================
if [[ $test != "Scored_Only" && $test != "Important_Scored_Only" && $test != "" ]]; then
	echo " Invalid input, you can input nothing to run all tests or you can type 'Scored_Only' or 'Important_Scored_Only' to run only those tests.">&2
	exit 1
fi


  for i in test/*.sh; do
    if [[ `basename $i` == `basename $0` ]]; then
      continue
    fi

#    echo Including test file $i
    source ./$i

    if [[ $(test_filter $test $scored $important)==0 ]]; then
	test_wrapper "$test_serial_number" "$test_name" "$scored" "$server" "$workstation"
    fi
    
    # This will be the return value of the "included" function
#    testcode=$?

 #   echo -n "${test_name} (Important: ${test_important}, Scored: ${test_scored}): "
 #   if [[ $testcode == 1 ]]; then
 #     echo FAIL
 #   else
 #     echo PASS
 #   fi
  done

echo
echo Results
echo
echo "Scored (Server)"
echo ====================================
echo Server 1 = $score_server1_ok / $score_server1_total
echo Server 2 = $score_server2_ok / $score_server2_total

echo
echo "Scored (Workstation)"
echo ====================================
echo Workstation 1 = $score_workstation1_ok / $score_workstation1_total
echo Workstation 2 = $score_workstation2_ok / $score_workstation2_total

echo
echo "Not Scored (Server)"
echo ====================================
echo Server 1 = $noscore_server1_ok / $noscore_server1_total
echo Server 2 = $noscore_server2_ok / $noscore_server2_total
echo
echo "Not Scored (Workstation)"
echo ====================================
echo Workstation 1 = $noscore_workstation1_ok / $noscore_workstation1_total
echo Workstation 2 = $noscore_workstation2_ok / $noscore_workstation2_total
