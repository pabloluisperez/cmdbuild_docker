FROM tomcat:9.0.31-jdk11-openjdk

MAINTAINER LLC Itmicus <order@itmicus.ru>

WORKDIR $CATALINA_HOME


#ENV CMDBUILD_URL /home/faelterman/Downloads/openmaint-2.2-3.3.2-w.war
#ENV CMDBUILD_URL https://downloads.sourceforge.net/project/openmaint/2.2/openmaint-2.2-3.3.2-w.war?ts=gAAAAABh03PqC-yxgY2axYvRlJQavqry8ljO-dEo8UaYvp0OYyRtReTCmApK__M4-OfpzYH36SBKtVJH3_j9WlWogB9FIITDJA%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fopenmaint%2Ffiles%2F2.2%2Fopenmaint-2.2-3.3.2-w.war%2Fdownload
#ENV CMDBUILD_URL https://sourceforge.net/projects/openmaint/files/2.1/openmaint-2.2-3.3.2-w.war/download
ENV CMDBUILD_URL=https://sourceforge.net/projects/openmaint/files/2.2/openmaint-2.2-3.3.2-w.war/download
ENV POSTGRES_USER postgres
ENV POSTGRES_PASS postgres
ENV POSTGRES_PORT 5432
ENV POSTGRES_HOST openmaint_db
ENV POSTGRES_DB openmaint
ENV CMDBUILD_DUMP demo.dump.xz


RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
    maven \
	postgresql-client

RUN apt-get install ca-certificates -y

RUN set -x \
 	&& mkdir $CATALINA_HOME/conf/cmdbuild/ \
 	&& mkdir $CATALINA_HOME/webapps/cmdbuild/

COPY files/tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml
COPY files/context.xml $CATALINA_HOME/webapps/manager/META-INF/context.xml
COPY files/database.conf $CATALINA_HOME/conf/cmdbuild/database.conf
COPY files/docker-entrypoint.sh /usr/local/bin/


RUN set -x \
	&& groupadd tomcat \
	&& useradd -s /bin/false -g tomcat -d $CATALINA_HOME tomcat \
	&& cd /tmp \
	&& wget --no-check-certificate -O cmdbuild.war "$CMDBUILD_URL" \
	&& chmod 777 cmdbuild.war \
	&& chmod 777 /usr/local/bin/docker-entrypoint.sh \
	&& unzip cmdbuild.war -d cmdbuild \
	&& mv cmdbuild.war $CATALINA_HOME/webapps/cmdbuild.war \
	&& mv cmdbuild/* $CATALINA_HOME/webapps/cmdbuild/ \
	&& chmod 777 $CATALINA_HOME/webapps/cmdbuild/cmdbuild.sh \
	&& chown tomcat -R $CATALINA_HOME \
	&& cd /tmp \
	&& rm -rf * \
	&& rm -rf /var/lib/apt/lists/*

# cleanup
RUN apt-get -qy autoremove

ENTRYPOINT /usr/local/bin/docker-entrypoint.sh

USER tomcat

EXPOSE 8080

CMD ["catalina.sh", "run"]
