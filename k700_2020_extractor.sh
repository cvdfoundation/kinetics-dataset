#!/bin/bash

# Download directories vars
root_dl="k700-2020"
root_dl_targz="k700-2020_targz"

# Make root directories
[ ! -d $root_dl ] && mkdir $root_dl

# Extract train
curr_dl=$root_dl_targz/train
curr_extract=$root_dl/train
[ ! -d $curr_extract ] && mkdir -p $curr_extract
tar_list=$(ls $curr_dl)
for f in $tar_list
do
	[[ $f == *.tar.gz ]] && echo Extracting $curr_dl/$f to $curr_extract && tar zxf $curr_dl/$f -C $curr_extract
done

# Extract validation
curr_dl=$root_dl_targz/val
curr_extract=$root_dl/val
[ ! -d $curr_extract ] && mkdir -p $curr_extract
tar_list=$(ls $curr_dl)
for f in $tar_list
do
	[[ $f == *.tar.gz ]] && echo Extracting $curr_dl/$f to $curr_extract && tar zxf $curr_dl/$f -C $curr_extract
done

# Extract test
curr_dl=$root_dl_targz/test
curr_extract=$root_dl/test
[ ! -d $curr_extract ] && mkdir -p $curr_extract
tar_list=$(ls $curr_dl)
for f in $tar_list
do
	[[ $f == *.tar.gz ]] && echo Extracting $curr_dl/$f to $curr_extract && tar zxf $curr_dl/$f -C $curr_extract
done

# Extract deep mind annotations
curr_dl=$root_dl_targz/annotations/deepmind
curr_extract=$root_dl/annotations/deepmind
[ ! -d $curr_extract ] && mkdir -p $curr_extract
tar_list=$(ls $curr_dl)
for f in $tar_list
do
	[[ $f == *.tar.gz ]] && echo Extracting $curr_dl/$f to $curr_extract && tar zxf $curr_dl/$f -C $curr_extract
done

# Extract deep mind top-up annotations
curr_dl=$root_dl_targz/annotations/deepmind_top-up
curr_extract=$root_dl/annotations/deepmind_top-up
[ ! -d $curr_extract ] && mkdir -p $curr_extract
tar_list=$(ls $curr_dl)
for f in $tar_list
do
	[[ $f == *.tar.gz ]] && echo Extracting $curr_dl/$f to $curr_extract && tar zxf $curr_dl/$f -C $curr_extract
done

# Extract deep mind top-up annotations
curr_dl=$root_dl_targz/annotations/AVA-Kinetics
curr_extract=$root_dl/annotations/AVA-Kinetics
[ ! -d $curr_extract ] && mkdir -p $curr_extract
tar_list=$(ls $curr_dl)
for f in $tar_list
do
	[[ $f == *.tar.gz ]] && echo Extracting $curr_dl/$f to $curr_extract && tar zxf $curr_dl/$f -C $curr_extract
done

# Extraction complete
echo -e "\nExtractions complete!"