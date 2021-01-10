#!/bin/bash
apt update >> /tmp/install.log 2>&1
apt upgrade -y >> /tmp/install.log 2>&1
apt update >> /tmp/install.log 2>&1
apt install -y openjdk-8-jre-headless >> /tmp/install.log 2>&1
apt install -y nload >> /tmp/install.log 2>&1
apt install -y htop >> /tmp/install.log 2>&1
sed -i "2i20.193.42.119 devgateway.secupi.com" /etc/hosts

cd /home/secupi
wget -O- https://downloads.apache.org//jmeter/binaries/apache-jmeter-5.2.1.tgz | tar zxvf -
wget -O /home/secupi/apache-jmeter-5.2.1/bin/jmeter https://raw.githubusercontent.com/frishrash/azure_scripts/master/jmeter/jmeter
wget -O /home/secupi/apache-jmeter-5.2.1/bin/jmeter.properties https://raw.githubusercontent.com/frishrash/azure_scripts/master/jmeter/jmeter.properties
wget -O /home/secupi/apache-jmeter-5.2.1/lib/snowflake-jdbc-3.12.16.jar https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/3.12.16/snowflake-jdbc-3.12.16.jar

chown -R secupi:secupi /home/secupi
