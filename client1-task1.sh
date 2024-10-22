echo choose option 'r' then enter 192.168.0.2
so-allow
echo choose option 'o' then enter 192.168.0.2
so-allow
so-allow-view
echo review the list to ensre the changes were made
pause
sed -i 's:MANAGER_IP:192.168.0.2:g' /var/ossec/etc/ossec.conf
/var/ossec/bin/agent-auth -m 192.168.0.2
service wazuh-agent restart
