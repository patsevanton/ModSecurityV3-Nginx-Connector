#!/bin/bash

mkdir -p ~/rpmbuild/{RPMS,SRPMS,BUILD,SOURCES,SPECS}
spectool -g -R nginx.spec
cd SOURCES
cp 404.html  bots.conf   nginx-auto-cc-gcc.patch   nginx-auto-options.patch  nginx-logo.png   nginx-passenger-conf.patch  vhosts.conf
50x.html  index.html  nginx-auto-install.patch  nginx.init nginx.logrotate  nginx.sysconfig status.conf modsecurity.conf ~/rpmbuild/SOURCES
cd ..
#export MODSECURITY_INC=~/rpmbuild/BUILD/libModSecurity-3/headers/
#export MODSECURITY_LIB=~/rpmbuild/BUILD/libModSecurity-3/src/.libs/
rpmbuild -ba nginx.spec

