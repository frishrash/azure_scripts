#!/bin/bash
rm /opt/secupi/secupi-gateway-*.jar
cd /opt/secupi
wget -O secupi-gateway-latest-obfuscated.jar https://secupipublic.blob.core.windows.net/public/secupi-gateway-latest-obfuscated.jar
/usr/local/bin/init.sh
