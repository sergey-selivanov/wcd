#!/bin/sh

./gradlew clean jlink


/opt/jdk-14/bin/jpackage \
--type deb \
--dest /home/sergeys/git/wcd/build/jpackage \
--name webcachedigger \
--module webcachedigger/org.sergeys.webcachedigger.ui.WebCacheDigger \
--app-version 0.1.1 \
--runtime-image /home/sergeys/git/wcd/build/image \
--icon /home/sergeys/git/wcd/src/main/resources/images/icon.png

exit

/opt/jdk-14/bin/jpackage \ 
--type app-image \
--dest /home/sergeys/git/wcd/build/jpackage \ 
--name webcachedigger \
--module-path /home/sergeys/git/wcd/build/jlinkbase/jlinkjars \ 
--module webcachedigger/org.sergeys.webcachedigger.ui.WebCacheDigger \ 
--app-version 0.1.1 \
--runtime-image /home/sergeys/git/wcd/build/image \ 
--icon /home/sergeys/git/wcd/src/main/resources/images/icon.png


jpackage \
--module-path build/install/hellofx/lib \
--module hellofx/org.openjfx.MainApp \
 \
--verbose \
--dest build/install \
--name "HelloFX-Test-Application" \
--app-version "1.0.0" \
--icon src/main/resources/images/amor.png \
--vendor "Svs"
