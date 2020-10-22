#!/bin/bash
getIp(){
	IP=$(ifconfig | grep eno1 --after-context 1 | tail -n 1 | awk '{print $2}')
	echo $IP
}
