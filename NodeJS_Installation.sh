# Name    : NodeJS_Installation.sh 
# Purpose : To install nodejs on ubuntu

Node_Version=0
if [ "XX$1" == "XX" ];then
     echo "Please Enter Node version"
     exit -1
  fi

Node_Version=$1 
echo $Node_Version

Node_Installion_dir=~/local/node_$Node_Version
mkdir -p $Node_Installion_dir

wget http://nodejs.org/dist/v$Node_Version/node-v$Node_Version-linux-x64.tar.gz 

tar -xvzf node-v$Node_Version-linux-x64.tar.gz -C ~/local/node_$Node_Version --strip-components=1

echo '# Node Enviroment Setup'$Node_Version >> ~/.bashrc
echo 'export PATH=$HOME/local/node_'$Node_Version'/bin:$PATH' >> ~/.bashrc
echo 'export NODE_PATH=$HOME/local/node_'$Node_Version'/lib/node_modules' >> ~/.bashrc
. ~/.bashrc
