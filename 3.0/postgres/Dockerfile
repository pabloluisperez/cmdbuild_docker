FROM postgres:10.7

MAINTAINER LLC Itmicus <order@itmicus.ru>

ENV POSTGIS_VERSION 2.5.5+dfsg-1.pgdg90+2

ENV POSTGIS_MAJOR 2.5
ENV POSTGRES_USER postgres
ENV POSTGRES_PASS postgres

RUN apt-get update \
      && apt-cache showpkg postgresql-10-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           postgresql-10-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-10-postgis-$POSTGIS_MAJOR-scripts \
      && rm -rf /var/lib/apt/lists/*

# cleanup
RUN apt-get -qy autoremove


RUN mkdir -p /docker-entrypoint-initdb.d
