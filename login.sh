#!/bin/bash
a=$(curl -s "http://127.0.0.1/Api/login.do?username=$username&password=$password")
if [ "$a" -eq "1" ];then
	exit 0
fi
exit 1