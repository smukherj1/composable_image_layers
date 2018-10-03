FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common
RUN apt-get install -y wget apparmor aufs-tools binutils build-essential bzip2 cgroupfs-mount cpp cpp-5 dpkg-dev fakeroot g++ g++-5 gcc gcc-5 git git-man ifupdown iproute2 iptables isc-dhcp-client isc-dhcp-common less libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libapparmor-perl libasan2 libatm1 libatomic1 libbsd0 libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libdns-export162 libdpkg-perl libedit2 liberror-perl libfakeroot libfile-fcntllock-perl libgcc-5-dev libgdbm3 libgomp1 libisc-export160 libisl15 libitm1 liblsan0 libltdl7 libmnl0 libmpc3 libmpfr4 libmpx0 libnfnetlink0 libperl5.22 libpopt0 libpython-stdlib libpython2.7-minimal libpython2.7-stdlib libquadmath0 libstdc++-5-dev libtsan0 libubsan0 libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxmuu1 libxtables11 linux-libc-dev make manpages manpages-dev netbase openssh-client patch perl perl-modules-5.22 pigz pkg-config python python-minimal python2.7 python2.7-minimal rename rsync unzip xauth zip zlib1g-dev
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-get update
RUN wget https://github.com/bazelbuild/bazel/releases/download/0.17.1/bazel-0.17.1-installer-linux-x86_64.sh
RUN chmod +x ./bazel-0.17.1-installer-linux-x86_64.sh
RUN ./bazel-0.17.1-installer-linux-x86_64.sh