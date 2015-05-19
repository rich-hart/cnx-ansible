# Remove 'stdin: is not a tty' error (doesn't work)
# sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

# Install ansible
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible

# Manage server
mv /etc/ansible/hosts /etc/ansible/hosts.orig

cat > /etc/ansible/hosts << EOF

[web]
192.168.22.10
192.168.22.11

[local]
127.0.0.1

EOF


