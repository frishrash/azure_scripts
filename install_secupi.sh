rm -rf /opt/secupi
mkdir -p /opt/secupi
mkdir -p /opt/secupi/logs
mkdir -p /opt/secupi/agents
mkdir -p /opt/secupi/cache
mkdir -p /opt/secupi/dump
cd /opt/secupi
chown 777 logs agents cache dump
wget --no-check-certificate --trust-server-name $1
chown -R yarn:hadoop /opt/secupi
