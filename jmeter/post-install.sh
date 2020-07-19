#!/bin/bash
apt update > /tmp/install.log 2>&1
apt upgrade -y >> /tmp/install.log 2>&1
apt-get install -y openjdk-8-jre-headless >> /tmp/install.log 2>&1
apt-get install -y nload >> /tmp/install.log 2>&1
apt-get install -y htop >> /tmp/install.log 2>&1
sed -i "2i20.193.42.119 gal.frishit.com" /etc/hosts

cd /home/secupi
wget -O- https://downloads.apache.org//jmeter/binaries/apache-jmeter-5.2.1.tgz | tar zxvf -
wget -O /home/secupi/apache-jmeter-5.2.1/bin/jmeter https://raw.githubusercontent.com/frishrash/azure_scripts/master/jmeter/jmeter
wget -O /home/secupi/apache-jmeter-5.2.1/bin/jmeter.properties https://raw.githubusercontent.com/frishrash/azure_scripts/master/jmeter/jmeter.properties
wget -O /home/secupi/apache-jmeter-5.2.1/lib/snowflake-jdbc-3.10.3.jar https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/3.10.3/snowflake-jdbc-3.10.3.jar

chown -R secupi:secupi /home/secupi
