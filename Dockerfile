FROM linuxserver/smokeping

RUN apk add --no-cache perl-mime-base64 perl-authen-sasl
