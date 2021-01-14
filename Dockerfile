FROM fedora:31

WORKDIR /usr/local/bin

RUN curl -L -o openshift-client.tar.gz https://github.com/openshift/okd/releases/download/4.6.0-0.okd-2020-12-12-135354/openshift-client-linux-4.6.0-0.okd-2020-12-12-135354.tar.gz

RUN tar xvzf openshift-client.tar.gz

RUN dnf -y install vim-enhanced

RUN dnf -y install git

RUN dnf -y install ansible

RUN dnf -y install java-11-openjdk

RUN curl -L -o mvn.tar.gz https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

RUN tar xvzf mvn.tar.gz

ENV M2_HOME="/usr/local/bin/apache-maven-3.6.3"

ENV PATH="${M2_HOME}/bin:${PATH}"

RUN dnf -y install podman

ADD start.sh /start.sh

RUN chmod +x /start.sh 

CMD /start.sh

EXPOSE 8080