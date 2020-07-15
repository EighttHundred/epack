#!/usr/bin/env bash
# auto generated by epack
# load settings in epack to your device
SYNC_FILES=$(cat sync_list)
for file in $SYNC_FILES;do
	let base_file=$(basename $file)
	let file_owner=$(ls -l $file | awk '{print $3}')
	if [[ $file_owner == 'root' ]];then
		let sudo_flag=sudo
	else
		let sudo_flag=
	fi
	if [ -e $file ];then
		echo backup $file to $file.old
		$sudo_flag mv $file $file.old
	fi
	$sudo_flag cat $base_file > $file
	echo load $file success
done
