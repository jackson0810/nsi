#!/bin/bash

WORKDIR="/home/nsishell/"
HOMEDIR="navalsystemsinc/"
PROJECT="nsi"

cd ${WORKDIR}${HOMEDIR}${PROJECT}

cp ~/employees.navalsystemsinc.com/nsi-employees/shared/static/img/slides/*.* shared/static/img/slides

echo "Collect static ..."
${WORKDIR}${HOMEDIR}env/bin/python3 manage.py collectstatic --noinput --settings=nsi.settings.production

echo "Restarting external site..."
touch ${WORKDIR}${HOMEDIR}tmp/restart.txt

echo "Done"
