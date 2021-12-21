sudo mkdir ./k400
cd ./k400
sudo mkdir ./train
sudo mkdir ./val
sudo mkdir ./test
sudo mkdir ./replacement

cd ./train
sudo wget -i https://s3.amazonaws.com/kinetics/400/train/k400_train_path.txt
sudo bash ../../download.sh k400_train_path.txt
sudo bash ../../extract.sh k400_train_path.txt
cd ../

cd ./val
sudo wget -i https://s3.amazonaws.com/kinetics/400/val/k400_val_path.txt
sudo bash ../../download.sh k400_val_path.txt
sudo bash ../../extract.sh k400_val_path.txt
cd ../

cd ./test
sudo wget -i https://s3.amazonaws.com/kinetics/400/test/k400_test_path.txt
sudo bash ../../download.sh k400_test_path.txt
sudo bash ../../extract.sh k400_test_path.txt
cd ..

sudo wget https://s3.amazonaws.com/kinetics/400/annotations/train.csv
sudo wget https://s3.amazonaws.com/kinetics/400/annotations/val.csv
sudo wget https://s3.amazonaws.com/kinetics/400/annotations/test.csv
sudo wget http://s3.amazonaws.com/kinetics/400/readme.md

cd ./replacement
sudo wget https://s3.amazonaws.com/kinetics/400/replacement_for_corrupted_k400.tgz
tar -zxvf replacement_for_corrupted_k400.tgz

cd ..

