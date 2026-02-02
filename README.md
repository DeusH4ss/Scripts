 # 1. Stopper SSSD
sudo systemctl stop sssd
sudo systemctl disable sssd

# 2. Modifier PAM pour forcer l'authentification locale
sudo sed -i 's/^auth.*pam_sss.so/#&/' /etc/pam.d/common-auth
sudo sed -i 's/^account.*pam_sss.so/#&/' /etc/pam.d/common-account

# 3. S'assurer que pam_unix est actif
if ! grep -q "^auth.*pam_unix.so" /etc/pam.d/common-auth; then
    sudo sed -i '1i auth    required    pam_unix.so nullok_secure' /etc/pam.d/common-auth
fi

# 4. Redémarrer SSH
sudo systemctl restart ssh

# 5. Test
echo ""
echo "Test: ssh pierre@localhost"
echo "Essaie maintenant !"
