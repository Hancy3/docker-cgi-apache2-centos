FROM centos:latest
RUN yum -y update
RUN yum -y install httpd 
RUN yum -y install perl perl-CGI
COPY index.cgi /var/www/cgi-bin
RUN chmod 755 /var/www/cgi-bin/index.cgi
COPY httpd.conf /etc/httpd/conf/httpd.conf
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
