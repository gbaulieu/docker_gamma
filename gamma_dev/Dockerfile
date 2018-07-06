# This is a comment
FROM ubuntu:16.04
MAINTAINER Guillaume Baulieu <g.baulieu@ipnl.in2p3.fr>
RUN apt-get update && apt-get install -y git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libmysqlclient-dev libfftw3-dev graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev python-dev libxml2-dev libkrb5-dev libgsl0-dev libqt4-dev wget libboost-all-dev libeigen3-dev python-setuptools vim unzip subversion valgrind emacs autoconf automake libtool graphviz gv libunwind8 libunwind-dev libtinyxml-dev doxygen texlive geany python-pip python-dev lbzip2 libtbb2 gcovr
ADD known_hosts /root/.ssh/known_hosts
RUN cd /opt/ && wget https://root.cern.ch/download/root_v6.12.06.Linux-ubuntu16-x86_64-gcc5.4.tar.gz && tar -xzf root_v6.12.06.Linux-ubuntu16-x86_64-gcc5.4.tar.gz && rm root_v6.12.06.Linux-ubuntu16-x86_64-gcc5.4.tar.gz
RUN wget http://github.com/danmar/cppcheck/archive/1.83.tar.gz && tar -xzf 1.83.tar.gz && cd cppcheck-1.83 && make -j 2 SRCDIR=build CFGDIR=/usr/share/cppcheck/ && make -j 2 install CFGDIR=/usr/share/cppcheck/ && cd
RUN cd /opt/ && wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip && unzip sonar-scanner-cli-3.2.0.1227-linux.zip && ln -s /opt/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner /usr/bin/sonar-scanner
RUN cd /opt/ && wget ftp://lyoftp.in2p3.fr/baulieu/tensorflow_ubuntu16.tgz && tar -xzf tensorflow_ubuntu16.tgz && rm tensorflow_ubuntu16.tgz
RUN pip install tensorflow
RUN cd /opt/ && mkdir -p data/neda/numexo47 && cd data/neda/numexo47 && wget ftp://lyoftp.in2p3.fr/baulieu/run_0138.dat.03-05-18_14h21m50s.2.gz
