# Subscription Manager
sudo subscription-manager repos --enable=<repo>
sudo subscription-manager repos --disable=<repo>

sudo subscription-manager unregister
sudo subscription-manager register
sudo subscription-manager refresh
sudo subscription-manager attach --auto

# Setting up large TB partitions
yum install xfsprogs
parted /dev/sdx mklabel gpt
parted -a optimal -- /dev/sdx mkpart primary 1 -1
#mkfs.xfs -L somelabel /dev/sdx1
mkfs.xfs -L chubby001 /dev/sdx1
# In /etc/fstab
LABEL=chubby001 /nom-pi/data.000        xfs     defaults        0       0
# List out labels
sudo lsblk -o name,label
sudo blkid -o list

# Install bashtop
sudo subscription-manager repos --enable codeready-builder-for-rhel-9-x86_64-rpms

# dnf install -y cowsay
# dnf install -y lolcat
# asciiquarium from https://robobunny.com/projects/asciiquarium/html/
Note, you'll need cpan and ncurses
dnf -y install ncurses ncurses-devel
dnf -y install perl-CPAN
cpan
cpan> install CPAN
cpan> reload CPAN
cpan> install "Term::Animation"
# dnf install -y fortune-mod

# Create script in /etc/profile.d/
sudo touch /etc/profile.d/motd.sh
# content [START]
neofetch
/usr/bin/fortune| /usr/bin/cowsay -n
# content [END]
# Make executable
sudo chmod +x /etc/profile.d/motd.sh

# For tracking disk io
iotop
iostat -m <time_in_seconds>
dnf install -y nmon
nmon
