#!/usr/bin/env bash

# Load the main plugins "interface"
source "${HOME}/.bash_it/plugins/available/beamery/pluginsInterface.bash"

# update_git_branch
# Update .git branches from the latest remote origin
# The command accepts two optional argument which is the new branch to checkout
    # If no argument was passed then the command will default and switch all repos to master
    # If a second argument is passed then it will from that remote, if not it will default to origin
    # Default paramteres: git pull origin master

update_git_branch() {

	if [[ $@ == *'-s'* ]]; then
		echo "This function is not designed to work in single folder mode .. please revert to good old fashioned commands"
	else
		execute -g "git pull ${2:-origin} ${1:-master}"
	fi;
}
