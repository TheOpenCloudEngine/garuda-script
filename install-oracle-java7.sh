apt-get update
apt-get -y -q install python-software-properties
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get upgrade -y

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
apt-get -y install oracle-java7-installer

ln -s /usr/lib/jvm/java-7-oracle /usr/local/java