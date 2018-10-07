FROM 		quay.io/pterodactyl/core:mono

MAINTAINER 	JC Snider, <jcsnider3@gmail.com>

USER        root
RUN 		apk update &&  apk upgrade &&  apk add --no-cache --update sqlite-libs curl ca-certificates openssl git tar bash
			
USER        container
ENV         HOME=/home/container USER=container
WORKDIR     /home/container

COPY        ./startup-script.sh /startup-script.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
