#---------------------------------------------------------------------------
# Dockefile to build Docker Image with Apache WebServer running on Ubuntu
# Copyleft (c) by Denis Astahov
#---------------------------------------------------------------------------

FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

RUN echo 'Docker Image on CloudRun of alxndrak!<br>'   > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.2</font></b>' >> /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
