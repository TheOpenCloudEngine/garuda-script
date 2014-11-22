cd ~
svn checkout http://www.opencloudengine.org/svn/garuda/trunk/garuda-master
cd garuda-master/
mvn install package

rm -rf bin
mkdir bin
cp target/garuda-master-1.0.0-SNAPSHOT.jar bin/
cp -R target/lib bin/