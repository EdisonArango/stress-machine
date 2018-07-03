FROM edisonarango/centos7-systemd:latest

RUN yum update
RUN yum -y install wget

# Mysqlslap
RUN mkdir /mysqlslap
WORKDIR /mysqlslap
RUN wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
RUN rpm -Uvh mysql-community-release-el7-5.noarch.rpm
RUN yum -y install mysql-community-server
RUN systemctl enable mysqld

# Jmeter
WORKDIR /
RUN mkdir /jmeter
WORKDIR /jmeter
RUN yum -y install java-1.8.0-openjdk
RUN wget http://apache.uniminuto.edu//jmeter/binaries/apache-jmeter-4.0.tgz
RUN tar -xf apache-jmeter-4.0.tgz
ENV PATH=/jmeter/apache-jmeter-4.0/bin:$PATH

CMD ["/usr/sbin/init"]