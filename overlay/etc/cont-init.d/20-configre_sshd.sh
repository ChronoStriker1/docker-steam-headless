
# Generate new SSH host keys if they dont exist
if [[ ! -f /etc/ssh/ssh_host_rsa_key ]]; then
    echo "**** Generating SSH keys ****";
    /usr/bin/ssh-keygen -A
fi
mkdir -p /run/sshd
chmod 744 /run/sshd

echo "**** Configure SSH service ****";

sed -i 's|^#   Port 22.*$|Port 2222|' /etc/ssh/ssh_config
#echo 'Port 2222' > /etc/ssh/ssh_config.d/port.conf

echo "DONE"
