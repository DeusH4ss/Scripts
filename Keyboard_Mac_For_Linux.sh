#!/bin/bash

# Forcer l'interprétation en Bash
[ -z "$BASH" ] && echo "Ce script doit être exécuté avec bash, pas sh" && exit 1

# Définition des couleurs avec printf pour assurer la compatibilité
RED=$(printf '\033[0;31m')
GREEN=$(printf '\033[0;32m')
YELLOW=$(printf '\033[0;33m')
BLUE=$(printf '\033[0;34m')
PURPLE=$(printf '\033[0;35m')
CYAN=$(printf '\033[0;36m')
WHITE=$(printf '\033[1;37m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[0m')

# Symboles
CHECKMARK="✓"
KEYBOARD="⌨"
WIFI="📶"
WARNING="⚠"
PACKAGE="📦"
RESTART="🔄"
QUESTION="❓"
LOCK="🔒"
APPLE="🍎"
SERVER="🖥"

# Fonction pour vérifier si le script s'exécute avec sudo
check_root() {
    if [[ $EUID -ne 0 ]]; then
        printf "%b %s\n" "${RED}${WARNING}" "Ce script doit être exécuté en tant que root. Utilisez sudo."
        exit 1
    fi
}

# Fonction de message avec format fixe
message() {
    printf "%b %s%b\n" "${2}${1}" "${3}" "${RESET}"
}

# Fonction pour les encadrés avec des formats prédéfinis
show_box() {
    local color=$1
    local title=$2
    
    # Encadrés prédéfinis pour les titres communs (solution plus robuste)
    case "$title" in
        "${LOCK} INSTALLATION D'OPENSSH ${SERVER}")
            printf "%b╔═════════════════════════════════════════════════════╗%b\n" "$color" "$RESET"
            printf "%b║             🔒 INSTALLATION D'OPENSSH 🖥             ║%b\n" "$color" "$RESET"
            printf "%b╚═════════════════════════════════════════════════════╝%b\n" "$color" "$RESET"
            ;;
        "${KEYBOARD} CONFIGURATION DU CLAVIER ${APPLE}")
            printf "%b╔═════════════════════════════════════════════════════╗%b\n" "$color" "$RESET"
            printf "%b║            ⌨ CONFIGURATION DU CLAVIER 🍎            ║%b\n" "$color" "$RESET"
            printf "%b╚═════════════════════════════════════════════════════╝%b\n" "$color" "$RESET"
            ;;
        "${CHECKMARK} RÉCAPITULATIF ${CHECKMARK}")
            printf "%b╔═════════════════════════════════════════════════════╗%b\n" "$color" "$RESET"
            printf "%b║                  ✓ RÉCAPITULATIF ✓                  ║%b\n" "$color" "$RESET"
            printf "%b╚═════════════════════════════════════════════════════╝%b\n" "$color" "$RESET"
            ;;
        *)
            # Version générique pour d'autres titres
            printf "%b╔═════════════════════════════════════════════════════╗%b\n" "$color" "$RESET"
            printf "%b║ %-51s ║%b\n" "$color" "$title" "$RESET"
            printf "%b╚═════════════════════════════════════════════════════╝%b\n" "$color" "$RESET"
            ;;
    esac
}

# Affichage ASCII art ligne par ligne avec printf (plus fiable que cat ou echo)
show_ascii_art() {
    printf "%b███╗   ███╗ █████╗  ██████╗    ██╗  ██╗███████╗██╗   ██╗██████╗ %b\n" "$BLUE" "$RESET"
    printf "%b████╗ ████║██╔══██╗██╔════╝    ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗%b\n" "$BLUE" "$RESET"
    printf "%b██╔████╔██║███████║██║         █████╔╝ █████╗   ╚████╔╝ ██████╔╝%b\n" "$BLUE" "$RESET"
    printf "%b██║╚██╔╝██║██╔══██║██║         ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗%b\n" "$BLUE" "$RESET"
    printf "%b██║ ╚═╝ ██║██║  ██║╚██████╗    ██║  ██╗███████╗   ██║   ██████╔╝%b\n" "$BLUE" "$RESET"
    printf "%b╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝%b\n" "$BLUE" "$RESET"
    printf "%b ┌─┐┌─┐┌┐┌┌─┐┬┌─┐┬ ┬┬─┐┌─┐┌┬┐┬┌─┐┌┐┌   ┌─┐┬  ┌─┐┬  ┬┬┌─┐┬─┐%b\n" "$GREEN" "$RESET"
    printf "%b │  │ ││││├┤ ││ ┬│ │├┬┘├─┤ │ ││ ││││   │  │  ├─┤└┐┌┘││├┤ ├┬┘%b\n" "$GREEN" "$RESET"
    printf "%b └─┘└─┘┘└┘└  ┴└─┘└─┘┴└─┴ ┴ ┴ ┴└─┘┘└┘   └─┘┴─┘┴ ┴ └┘ ┴┴└─┘┴└─%b\n" "$GREEN" "$RESET"
    printf "%b=======================================================================%b\n" "$PURPLE" "$RESET"
    printf "%b            Installation et Configuration du Clavier Mac            %b\n" "$CYAN" "$RESET"
    printf "%b                            par DeusH4ss                          %b\n" "$BLUE" "$RESET"
    printf "%b=======================================================================%b\n" "$PURPLE" "$RESET"
}

# Fonction pour lire l'entrée utilisateur de manière standardisée
read_input() {
    local prompt=$1
    local var_name=$2
    printf "%b%s%b " "$YELLOW" "$prompt" "$RESET"
    read -r "$var_name"
}

# Début du script principal
check_root
show_ascii_art

# Vérification de la connexion réseau
message "$WIFI" "$BLUE" "Vérification de la connexion réseau..."
if ! ping -q -c 1 -W 1 1.1.1.1 >/dev/null; then
    message "$WARNING" "$RED" "Pas d'accès à Internet. Vérifiez votre connexion réseau."
    exit 1
fi

# Mise à jour des paquets
message "$PACKAGE" "$BLUE" "Mise à jour des paquets..."
apt update -y

# Installation des paquets requis
message "$PACKAGE" "$BLUE" "Installation des paquets requis..."
apt install -y x11-xkb-utils

# Demande d'installation d'OpenSSH
printf "\n"
show_box "$CYAN" "${LOCK} INSTALLATION D'OPENSSH ${SERVER}"
printf "\n"

read_input "${QUESTION} Voulez-vous installer OpenSSH-Server ? (o/n) :" ssh_choice
if [[ $ssh_choice =~ ^[Oo]$ ]]; then
    message "$PACKAGE" "$BLUE" "Installation d'OpenSSH-Server..."
    apt install -y openssh-server
    systemctl enable ssh
    systemctl start ssh
    message "$CHECKMARK" "$GREEN" "OpenSSH-Server a été installé et activé."
else
    message "$WARNING" "$YELLOW" "Installation d'OpenSSH-Server ignorée."
fi

# Menu de configuration du clavier
printf "\n"
show_box "$PURPLE" "${KEYBOARD} CONFIGURATION DU CLAVIER ${APPLE}"
printf "\n"
printf "%b%s%b\n\n" "$YELLOW" "Veuillez choisir le type de clavier à configurer :" "$RESET"
printf "%b%s%b\n" "$GREEN" "1. Clavier Mac AZERTY       ${KEYBOARD} 🍎" "$RESET"
printf "%b%s%b\n\n" "$GREEN" "2. Clavier AZERTY classique ${KEYBOARD} 🖥️" "$RESET"

while true; do
    read_input "${QUESTION} Entrez le numéro de votre choix (1 ou 2) :" choice
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

# Application de la configuration
message "$CHECKMARK" "$BLUE" "Application des nouveaux paramètres du clavier..."
dpkg-reconfigure -f noninteractive keyboard-configuration
invoke-rc.d keyboard-setup start
systemctl restart keyboard-setup

message "$CHECKMARK" "$GREEN" "Configuration du clavier terminée."

# Récapitulatif
printf "\n"
show_box "$GREEN" "${CHECKMARK} RÉCAPITULATIF ${CHECKMARK}"
printf "\n"
printf "%b✓ Configuration du clavier appliquée%b\n" "$GREEN" "$RESET"
if [[ $ssh_choice =~ ^[Oo]$ ]]; then
    printf "%b✓ OpenSSH-Server installé et activé%b\n" "$GREEN" "$RESET"
else
    printf "%b✗ OpenSSH-Server non installé%b\n" "$YELLOW" "$RESET"
fi
printf "\n"

# Demande de redémarrage
printf "\n"
read_input "${RESTART} Voulez-vous redémarrer maintenant ? (o/n) :" confirm
if [[ $confirm =~ ^[Oo]$ ]]; then
    message "$RESTART" "$BLUE" "Redémarrage en cours..."
    reboot
else
    message "$WARNING" "$YELLOW" "Redémarrage annulé. Vous devrez peut-être redémarrer manuellement pour appliquer les changements."
fi
