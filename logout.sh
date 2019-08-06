#!/bin/bash
a=$bytes_received
b=$bytes_sent
used=$[(a+b+1000000)/1000000]
sleep 1
curl "http://127.0.0.1/Api/logout.do?username=$username&used=$used"