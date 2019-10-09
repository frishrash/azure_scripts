#! /bin/bash
rm /run/nologin
systemctl start systemd-user-sessions.service
