#!/bin/bash
BEFORE_HOST=$1
AFTER_HOST=$2

HOSTS_FILE=/etc/hosts
#change host
sed -i -e "/${AFTER_HOST}/d" $HOSTS_FILE
arr=(`dig A ${BEFORE_HOST} | grep ^${BEFORE_HOST} | awk '{print $5}'`)

i=0
for num in ${arr[@]}; do
	echo "${num} ${AFTER_HOST}" >> ${HOSTS_FILE}
	let i++
done
