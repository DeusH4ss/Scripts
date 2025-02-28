#!/bin/bash

chmod +x "$0"

# Couleurs et symboles
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RESET='\033[0m'
CHECKMARK="✅"
KEYBOARD="⌨️"
WIFI="📶"
WARNING="⚠️"
PACKAGE="📦"
RESTART="🔄"
QUESTION="❓"

# Fonction pour afficher des messages avec style
message() {
  local icon=$1
  local color=$2
  local text=$3
  echo -e "${color}${icon} ${text}${RESET}"
}

# Vérifier si le script est exécuté en tant que root
if [[ $EUID -ne 0 ]]; then
    message "$WARNING" "$RED" "Ce script doit être exécuté en tant que root. Utilisez sudo."
    exit 1
fi

# Vérifier la connexion réseau avant d'exécuter une mise à jour
message "$WIFI" "$BLUE" "Vérification de la connexion réseau..."
if ! ping -q -c 1 -W 1 1.1.1.1 >/dev/null; then
    message "$WARNING" "$RED" "Pas d'accès à Internet. Vérifiez votre connexion réseau."
    exit 1
fi

# Mettre à jour les paquets
message "$PACKAGE" "$BLUE" "Mise à jour des paquets..."
apt update -y

# Installation de OPENSSH-SERVER
message "$PACKAGE" "$BLUE" "Installation des paquets requis..."
apt install -y x11-xkb-utils openssh-server

# Afficher un menu stylisé pour le choix du clavier
echo ""
echo -e "${BLUE}╔════════════════════════════════════════════╗${RESET}"
echo -e "${BLUE}║        ${KEYBOARD} CONFIGURATION DU CLAVIER ${KEYBOARD}        ║${RESET}"
echo -e "${BLUE}╚════════════════════════════════════════════╝${RESET}"
echo ""
echo -e "${YELLOW}Veuillez choisir le type de clavier à configurer :${RESET}"
echo ""
echo -e "${GREEN}1. Clavier Mac AZERTY       ${KEYBOARD} 🍎${RESET}"
echo -e "${GREEN}2. Clavier AZERTY classique ${KEYBOARD} 🖥️${RESET}"
echo ""

while true; do
    read -rp "$(echo -e ${YELLOW}${QUESTION}${RESET})" -p " Entrez le numéro de votre choix (1 ou 2) : " choice
    case $choice in
        1)
            message "$KEYBOARD" "$GREEN" "Configuration du clavier en mode Mac AZERTY..."
            cat <<EOL > /etc/default/keyboard
XKBLAYOUT="fr"
XKBVARIANT="mac"
XKBOPTIONS="apple:badmap"
BACKSPACE="guess"
EOL
            break
            ;;
        2)
            message "$KEYBOARD" "$GREEN" "Configuration du clavier en mode AZERTY classique..."
            cat <<EOL > /etc/default/keyboard
XKBLAYOUT="fr"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"
EOL
            break
            ;;
        *)
            message "$WARNING" "$RED" "Choix invalide. Veuillez entrer 1 ou 2."
            ;;
    esac
done

# Appliquer la configuration du clavier
message "$CHECKMARK" "$BLUE" "Application des nouveaux paramètres du clavier..."
dpkg-reconfigure -f noninteractive keyboard-configuration
invoke-rc.d keyboard-setup start
systemctl restart keyboard-setup

message "$CHECKMARK" "$GREEN" "Configuration du clavier terminée."

# Demander une confirmation avant de redémarrer
echo ""
read -rp "$(echo -e ${YELLOW}${RESTART}${RESET})" -p " Voulez-vous redémarrer maintenant ? (o/n) : " confirm
if [[ $confirm =~ ^[Oo]$ ]]; then
    message "$RESTART" "$BLUE" "Redémarrage en cours..."
    reboot
else
    message "$WARNING" "$YELLOW" "Redémarrage annulé. Vous devrez peut-être redémarrer manuellement pour appliquer les changements."
fi
