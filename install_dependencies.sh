#!/bin/bash

yum -y install gcc-c++ flex bison yajl yajl-devel curl-devel curl GeoIP-devel doxygen zlib-devel libtool \
autoconf automake libxml2-devel pcre-devel spectool yum-utils rpm-build wget openssl-devel libxslt-devel perl-ExtUtils-Embed
spectool -g -R nginx.spec
yum-builddep -y nginx.spec

