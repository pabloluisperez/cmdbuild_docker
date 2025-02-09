#!/bin/sh

# build images and set tags
# cmdbuild
docker build -t itmicus/cmdbuild:app-3.3 3.3/cmdbuild/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:app-3.2.1 3.2.1/cmdbuild/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:app-3.2 3.2/cmdbuild/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:app-3.1.1 3.1.1/cmdbuild/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:app-3.1 3.1/cmdbuild/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:db-3.0 3.0/postgres/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"

# ready2use
docker build -t itmicus/cmdbuild:r2u-2.0-3.3 ready2use-2.2-3.3.3/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:r2u-2.0-3.3 ready2use-2.0-3.3/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:r2u-2.0-3.2.1 ready2use-2.0-3.2.1/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:r2u-2.0-3.2 ready2use-2.0-3.2/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:r2u-2.0-3.1.1 ready2use-2.0-3.1.1/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:r2u-2.0 ready2use-2.0/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"

#openMAINT
docker build -t itmicus/cmdbuild:om-2.0-3.3 openmaint-2.0-3.3/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:om-2.0-3.2.1 openmaint-2.0-3.2.1/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:om-2.0-3.2 openmaint-2.0-3.2/. --label "version=1.0" --label "maintaner=Itmicus <order@itmicus.ru>"
docker build -t itmicus/cmdbuild:om-2.1-3.3-b openmaint-2.1-3.3-b/. --label "version=1.0" --label "maintaner=Andre Carvalho <afccarvalho.1991@gmail.com>"
