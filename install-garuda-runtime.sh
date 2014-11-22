sh -x install-oracle-java7.sh

wget https://www.dropbox.com/s/kmv524deo3lr9d9/felix-framework-4.4.0.tar.gz
gunzip felix-framework-4.4.0.tar.gz
tar xvf felix-framework-4.4.0.tar

wget https://www.dropbox.com/s/7vvdrq9ou3o39sw/ArvueAppServerController.tar
tar xvf ArvueAppServerController.tar

wget https://www.dropbox.com/s/cuprhsdgjomdgbq/felix
wget https://www.dropbox.com/s/kpzx25rp88ne64l/appServerController

mv felix /etc/init.d/felix
mv appServerController /etc/init.d/appServerController
 
chmod 755 /etc/init.d/felix
chmod 755 /etc/init.d/appServerController
 
update-rc.d felix defaults
update-rc.d appServerController defaults