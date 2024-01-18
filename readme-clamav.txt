sudo yum install -y clamav clamd clamav-update

# Create service user to run clamav
groupadd clamav
useradd -g clamav -s /bin/false -c "Clam Antivirus" clamav

# Make sure service user owns DB directory
sudo chown -R clamav:clamav /usr/local/share/clamav

# Generate example configs
clamconf -g freshclam.conf > freshclam.conf
clamconf -g clamd.conf > clamd.conf
# Note, lcamav-milter is for mail scanning
#clamconf -g clamav-milter.conf > clamav-milter.conf
