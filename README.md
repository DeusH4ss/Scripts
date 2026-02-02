sudo bash -c 'killall -9 splunkd mongod python 2>/dev/null; pkill -9 -f splunk 2>/dev/null; sleep 2; rm -rf /opt/splunk; cd /tmp && wget -q https://download.splunk.com/products/splunk/releases/9.3.2/linux/splunk-9.3.2-d8bb32809498-Linux-x86_64.tgz && tar xzf splunk-9.3.2-d8bb32809498-Linux-x86_64.tgz -C /opt && id splunk || useradd -r -m splunk && cat > /opt/splunk/etc/system/local/user-seed.conf <<EOF
[user_info]
USERNAME = admin
PASSWORD = Admin123!
EOF
cat > /opt/splunk/etc/system/local/inputs.conf <<EOF
[splunktcp://9997]
disabled = false
EOF
cat > /opt/splunk/etc/system/local/web.conf <<EOF
[settings]
httpport = 8000
enableSplunkWebSSL = false
startwebserver = 1
EOF
chown -R splunk:splunk /opt/splunk && sudo -u splunk /opt/splunk/bin/splunk start --accept-license --answer-yes --no-prompt && sleep 30 && netstat -tuln | grep -E "8000|8089|9997" && echo "" && echo "URL: http://$(hostname -I | awk "{print \$1}"):8000" && echo "User: admin / Pass: Admin123!"'
