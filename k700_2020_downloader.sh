sudo mkdir ./k700-2020
cd ./k700-2020
sudo mkdir ./train
sudo mkdir ./val
sudo mkdir ./test
sudo mkdir ./AVA-Kinetics

cd ./train
sudo wget -i https://s3.amazonaws.com/kinetics/700_2020/train/k700_2020_train_path.txt
sudo bash ../../download.sh k700_2020_train_path.txt
sudo bash ../../extract.sh k700_2020_train_path.txt
cd ../

cd ./val
sudo wget -i https://s3.amazonaws.com/kinetics/700_2020/val/k700_2020_val_path.txt
sudo bash ../../download.sh k700_2020_val_path.txt
sudo bash ../../extract.sh k700_2020_val_path.txt
cd ../

cd ./test
sudo wget -i https://s3.amazonaws.com/kinetics/700_2020/test/k700_2020_test_path.txt
sudo bash ../../download.sh k700_2020_test_path.txt
sudo bash ../../extract.sh k700_2020_test_path.txt
cd ..

sudo wget https://s3.amazonaws.com/kinetics/700_2020/annotations/train.csv

sudo wget https://s3.amazonaws.com/kinetics/700_2020/annotations/val.csv
sudo wget https://s3.amazonaws.com/kinetics/700_2020/annotations/test.csv
sudo wget http://s3.amazonaws.com/kinetics/700_2020/K700_2020_readme.txt

cd ./AVA-Kinetics
sudo wget https://s3.amazonaws.com/kinetics/700_2020/annotations/ava_kinetics_v1_0.tar.gz
tar -zxvf ava_kinetics_v1_0.tar.gz
sudo wget https://s3.amazonaws.com/kinetics/700_2020/annotations/countix.tar.gz
tar -zxvf countix.tar.gz
cd ..

