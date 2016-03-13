#!/bin/bash

WORKDIR="/home/nsishell/"
HOMEDIR="navalsystemsinc/"
PROJECT="nsi"

cd ${WORKDIR}${HOMEDIR}

echo "Collect static ..."
${WORKDIR}${HOMEDIR}env/bin/python3 manage.py collectstatic --noinput --settings=nsi.settings.production

echo "Done"
