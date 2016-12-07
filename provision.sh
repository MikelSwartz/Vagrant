#!/bin/bash
cd /vagrant/
yum update -y
yum upgrade -y
yum install wget vim tree -y
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y
yum install  gcc perl-ExtUtils-MakeMaker -y
if [ -f /vagrant/git-2.8.4.tar.gz ]
then
	echo git-2.8.4.tar.gz exisits
else
	cd /vagrant/
	wget https://www.kernel.org/pub/software/scm/git/git-2.8.4.tar.gz
fi
yum remove git -y 
tar -xzf /vagrant/git-2.8.4.tar.gz -C /usr/src/
cd /usr/src/git-2.8.4/
make prefix=/usr/local/git all
make prefix=/usr/local/git install
echo "export PATH=$PATH:/usr/local/git/bin" >> /etc/bashrc
