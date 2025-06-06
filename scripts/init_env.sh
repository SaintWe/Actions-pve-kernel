rm -rf /swapfile /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android /opt/ghc
wget http://download.proxmox.com/debian/proxmox-release-bookworm.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg
chmod +r /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
chmod a+w /etc/apt/sources.list
echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" >>/etc/apt/sources.list
echo "deb http://deb.debian.org/debian bookworm main" >>/etc/apt/sources.list
apt-get update
apt-get install git nano screen patch fakeroot build-essential devscripts libncurses5 libncurses5-dev libssl-dev bc flex bison libelf-dev libaudit-dev libgtk2.0-dev libperl-dev asciidoc xmlto gnupg gnupg2 rsync lintian debhelper libdw-dev libnuma-dev libslang2-dev sphinx-common asciidoc-base automake cpio dh-python file gcc kmod libiberty-dev libtool python3-minimal sed tar zlib1g-dev liblz4-tool idn zstd libpve-common-perl systemtap-sdt-dev libcap-dev libzstd-dev libtraceevent-dev libunwind-dev python3-dev binutils-dev dwarves python3-setuptools libpfm4-dev gawk
apt-get autoremove --purge
apt-get clean
