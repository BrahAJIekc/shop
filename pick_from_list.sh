#!/bin/bash
# Bash Menu Script Example

PS3="Please pick commit type: `echo $'\n> '`"
options=("BUGFIX" "FEATURE" "TESTS" "REFACTORING" "HOTFIX" "DOCKER" "OTHER" )
select opt in "${options[@]}"
do
    case $opt in
        "BUGFIX")
            emoji=":bug:"
			prefix="bugfix"
			break
            ;;
        "FEATURE")
            emoji=":sparkles:"
			prefix="feature"
			break
            ;;
        "TESTS")
            emoji=":white_check_mark:"
			prefix="tests"
			break
            ;;
        "REFACTORING")
            emoji=":recycle:"
			prefix="refactoring"
			break
            ;;
        "HOTFIX")
            emoji=":ambulance:"
			prefix="hotfix"
			break
            ;;
        "DOCKER")
            emoji=":whale:"
			prefix="docker"
			break
            ;;
        "OTHER")
            echo "you chose choice $REPLY which is $opt"
			break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done


read -p "Please Enter a title: `echo $'\n> '`" title

read -rep "Please Enter a description: `echo $'\n> '`" description

read -p "Please Enter jira ticket: `echo $'\n> '`" jira

printf "\n\n"

printf "$emoji $prefix: $title\n\n$description\n\n#$jira\n\n"
