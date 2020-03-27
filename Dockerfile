FROM debian:9-slim
MAINTAINER daanhornnl@gmail.com

ARG BASE_URL

ENV HUGO_VERSION 0.18
ENV HUGO_ARCHIVE hugo_${HUGO_VERSION}_Linux-64bit
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux_amd64

# Install pygments (for syntax highlighting) 
RUN apt-get -qq update \
	&& DEBIAN_FRONTEND=noninteractive apt-get -qq install -y --no-install-recommends python-pygments nginx \
	&& rm -rf /var/lib/apt/lists/*

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_ARCHIVE}.tar.gz /usr/local/
RUN tar xzf /usr/local/${HUGO_ARCHIVE}.tar.gz -C /usr/local/ \
	&& ln -s /usr/local/${HUGO_BINARY}/${HUGO_BINARY} /usr/local/bin/hugo \
	&& rm /usr/local/${HUGO_ARCHIVE}.tar.gz

RUN mkdir -p /usr/share/site \
	&& mkdir -p /var/www/horn.dev/public_html

EXPOSE 443 80

COPY site/ usr/share/site
COPY nginx/web /etc/nginx/sites-available/web
COPY /etc/letsencrypt/live/daanhorn.nl/fullchain.pem /home/hugo/cert/daanhorn.nl/fullchain.pem
COPY /etc/letsencrypt/live/daanhorn.nl/privkey.pem /home/hugo/cert/daanhorn.nl/privkey.pem
COPY /etc/letsencrypt/options-ssl-nginx.conf /home/hugo/nginx/options-ssl-nginx.conf
COPY /etc/letsencrypt/ssl-ssl_dhparams.pem /home/hugo/nginx/ssl-ssl_dhparams.pem

RUN cd /etc/nginx/sites-enabled \
	&& rm default \
	&& ln -s ../sites-available/web web

RUN hugo -s /usr/share/site -d /var/www/horn.dev/public_html -b ${BASE_URL}

CMD ["nginx", "-g", "daemon off;"]