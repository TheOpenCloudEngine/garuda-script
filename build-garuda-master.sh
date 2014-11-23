cd ~
svn checkout http://www.opencloudengine.org/svn/garuda/trunk/garuda-master
cd garuda-master/
mvn install package

rm -rf lib
cp target/garuda-master-1.0.0-SNAPSHOT.jar .
cp -R target/lib .