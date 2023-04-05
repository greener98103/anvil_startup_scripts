#docker build script 

apt-get install autoconf autogen

# install vcftools
git clone https://github.com/vcftools/vcftools.git
cd vcftools
./autogen.sh
./configure
make
make install

#Install plink

sudo apt-get install -y plink

#update packages

sudo apt-get update
sudo apt-get install gcc
sudo apt-get install make
sudo apt-get install libbz2-dev
sudo apt-get install zlib1g-dev
sudo apt-get install libncurses5-dev
sudo apt-get install libncursesw5-dev
sudo apt-get install liblzma-dev
apt-get install -y libcurl4


#htslib

cd /usr/bin
wget https://github.com/samtools/htslib/releases/download/1.9/htslib-1.9.tar.bz2
tar -vxjf htslib-1.9.tar.bz2
cd htslib-1.9
make

#samtools

cd ..
wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2
tar -vxjf samtools-1.9.tar.bz2
cd samtools-1.9
make

#bcftools

cd ..
wget https://github.com/samtools/bcftools/releases/download/1.9/bcftools-1.9.tar.bz2
tar -vxjf bcftools-1.9.tar.bz2
cd bcftools-1.9
make

#update user paths

export PATH="$PATH:/usr/bin/bcftools-1.9"
export PATH="$PATH:/usr/bin/samtools-1.9"
export PATH="$PATH:/usr/bin/htslib-1.9"
source ~/.profile