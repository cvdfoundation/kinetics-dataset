#!/bin/bash

# Download directories vars
root_dl="k600"
root_dl_targz="k600_targz"

# Make root directories
[ ! -d $root_dl ] && mkdir $root_dl
[ ! -d $root_dl_targz ] && mkdir $root_dl_targz

# Download train tars, will resume
curr_dl=${root_dl_targz}/train
url=https://s3.amazonaws.com/kinetics/600/train/k600_train_path.txt
[ ! -d $curr_dl ] && mkdir -p $curr_dl
wget -c -i $url -P $curr_dl

# Download validation tars, will resume
curr_dl=${root_dl_targz}/val
url=https://s3.amazonaws.com/kinetics/600/val/k600_val_path.txt
[ ! -d $curr_dl ] && mkdir -p $curr_dl
wget -c -i $url -P $curr_dl

# Download test tars, will resume
curr_dl=${root_dl_targz}/test
url=https://s3.amazonaws.com/kinetics/600/test/k600_test_path.txt
[ ! -d $curr_dl ] && mkdir -p $curr_dl
wget -c -i $url -P $curr_dl

# Download annotations csv files
curr_dl=${root_dl}/annotations
url_tr=https://s3.amazonaws.com/kinetics/600/annotations/train.txt
url_v=https://s3.amazonaws.com/kinetics/600/annotations/val.txt
url_t=https://s3.amazonaws.com/kinetics/600/annotations/test.csv
url_ht=https://s3.amazonaws.com/kinetics/600/annotations/kinetics600_holdout_test.csv
[ ! -d $curr_dl ] && mkdir -p $curr_dl
wget -c $url_tr -P $curr_dl
wget -c $url_v -P $curr_dl
wget -c $url_t -P $curr_dl
wget -c $url_ht -P $curr_dl

# Download readme
url=http://s3.amazonaws.com/kinetics/600/readme.md
wget -c $url -P $root_dl

# Downloads complete
echo -e "\nDownloads complete! Now run extractor, k600_extractor.sh"
