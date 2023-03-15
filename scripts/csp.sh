#!/bin/bash

PAGER="${PAGER:=less}"

csp() {
	curl --location --head $1 > /tmp/csp.txt
	grep 'content-security-policy' /tmp/csp.txt > /tmp/cspOnly.txt
	sed --in-place 's#content-security-policy: ##' /tmp/cspOnly.txt
	sed --in-place 's#; #\n\n#g' /tmp/cspOnly.txt

	if [[ -z $2 ]];then
		"${PAGER}" "/tmp/cspOnly.txt"
	else
		grep --color=always "${2}" /tmp/cspOnly.txt
	fi
}
