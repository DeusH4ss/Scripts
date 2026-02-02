sudo bash -c 'killall -9 splunkd mongod python 2>/dev/null; pkill -9 -f splunk 2>/dev/null; rm -rf /opt/splunk; cd /tmp && wget -q https://download.splunk.com/products/splunk/releases/9.3.2/linux/splunk-9.3.2-d8bb32809498-Linux-x86_64.tgz && tar xzf splunk-9.3.2-d8bb32809498-Linux-x86_64.tgz -C /opt && id splunk || useradd -r -m splunk'

sudo bash -c 'mkdir -p /opt/splunk/etc/system/local && echo -e "[user_info]\nUSERNAME = admin\nPASSWORD = Admin123!" > /opt/splunk/etc/system/local/user-seed.conf && echo -e "[splunktcp://9997]\ndisabled = false" > /opt/splunk/etc/system/local/inputs.conf && echo -e "[settings]\nhttpport = 8000\nenableSplunkWebSSL = false\nstartwebserver = 1" > /opt/splunk/etc/system/local/web.conf && chown -R splunk:splunk /opt/splunk'

sudo -u splunk /opt/splunk/bin/splunk start --accept-license --answer-yes --no-prompt && sleep 30 && netstat -tuln | grep -E "8000|8089|9997"
