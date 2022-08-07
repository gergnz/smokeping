FROM lscr.io/linuxserver/smokeping

RUN apk add --no-cache perl-mime-base64 perl-authen-sasl
RUN perl -0777 -i -pe "s/'--imgformat','PNG',/'--imgformat','PNG',\n           '--color', 'FONT#32a852FF',\n           '--color', 'BACK#232323FF',\n           '--color', 'CANVAS#7c7c7cFF',/igs" /usr/share/perl5/vendor_perl/Smokeping.pm
RUN perl -0777 -i -pe 's/<\/title>/<\/title>\n    <link REL="icon" HREF="\/favicon.png" TYPE="image\/png" \/>/igs' /etc/smokeping/basepage.html
COPY ./smokeping-screen.css /usr/share/webapps/smokeping/css/smokeping-screen.css
COPY ./favicon.png /var/www/localhost/htdocs/favicon.png
