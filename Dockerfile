FROM    registry.access.redhat.com/ubi8

EXPOSE  80

RUN     yum -y update && \
        yum -y install httpd && \
        yum clean all

WORKDIR /var/www/html

COPY    index.html .

CMD     ["/usr/sbin/httpd", "-D", "FOREGROUND"]