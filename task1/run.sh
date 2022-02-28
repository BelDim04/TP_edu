#!/bin/bash

sdir=$(pwd)

while [ $# -gt 0 ]
do
	option=$1
	shift
	case $option in
		--input_folder)
			input_folder=$1
			;;
		--extension)
			extension=$1
			;;
		--backup_folder)
			backup_folder=$1
			;;
		--backup_archive_name)
			backup_archive_name=$1
			;;
	esac
	shift
done

mkdir $backup_folder

cd $input_folder
files=$(find . -name "*.$extension")

for file in $files
do
	cp --parents $file $sdir/$backup_folder/
done

cd $sdir

tar -czf $backup_archive_name $backup_folder

echo done
