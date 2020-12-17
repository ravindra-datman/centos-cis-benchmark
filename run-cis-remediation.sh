#Only put the files for which you are certain that the remedy will work.

remedy_test_number_arr=("1.1.1.6" "1.1.1.7" "1.1.1.8" "1.1.10" "1.1.14" "1.1.17" "1.1.3" "1.1.4" "1.1.5"
    "1.1.8" "1.1.9" "1.2.1" "1.3.1" "1.3.2"
    "4.1.16" "4.1.4" "4.1.5" "4.1.6" "4.1.7")

remedy_base_path="./remediate"
test_base_path="./test"

for test_number in "${remedy_test_number_arr[@]}"; do
    full_path_to_remedy_file="$remedy_base_path/remediate_$test_number.sh"
    full_path_to_test_file="$test_base_path/$test_number.sh"

    if [ -f "$full_path_to_remedy_file" ]; then
        #Remedy File Exists
        if [ -f "$full_path_to_test_file" ]; then
            #Test file for the respective remedy file Exists
            #Now that we have both files, proceed with checks
            source $full_path_to_test_file
            execute >/dev/null

            if [[ "$?" -eq 0 ]]; then
                echo "$test_number ($test_name) is already passing. Skipped the remedy."
            else
                #Do the remedy for this
                sh $full_path_to_remedy_file
            fi

        else
            echo "$test_number test file does not exist. Skipping."
        fi
    else
        echo "$test_number remedy file does not exist. Skipping."
    fi

done
