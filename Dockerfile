FROM java:8

#Install node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

#Install XVFB display
RUN apt-get -y install xvfb gtk2-engines-pixbuf
ENV DISPLAY=:0

#Install firefox 43
RUN echo "deb http://packages.linuxmint.com debian import" | tee -a /etc/apt/sources.list
RUN gpg --keyserver pgp.mit.edu --recv-keys 3EE67F3D0FF405B2
RUN gpg --export 3EE67F3D0FF405B2 > 3EE67F3D0FF405B2.gpg
RUN apt-key add ./3EE67F3D0FF405B2.gpg
RUN rm ./3EE67F3D0FF405B2.gpg
RUN apt-get update
RUN apt-get -y install firefox
RUN echo firefox -v
