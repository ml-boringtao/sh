# https://tecadmin.net/how-to-install-net-core-on-ubuntu-20-04/

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt update 
sudo apt install apt-transport-https 
sudo apt install dotnet-sdk-3.1
dotnet --version
