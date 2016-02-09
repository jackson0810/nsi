#!/bin/bash

WORKDIR="/home/nsishell/"
SRCDIR="navalsystemsinc/nsi"
GITURL="git@github.com:jackson0810/nsi.git"
DOCROOT="/home/nsishell/nsi"
SETTINGS_FILE="nsi.settings"

cd ${WORKDIR}

echo "Pulling from bitbucket (${GITURL}) and deploying..."

if [ ! -d ${WORKDIR}${SRCDIR} ]; then
    git clone ${GITURL}
fi

echo "Switching to the source directory"
cd ${WORKDIR}/${SRCDIR}
git pull
echo

echo "Available local and remote branches:"
git branch -a
echo

echo "Enter the branch you wish to deploy: "
read  BRANCH_NAME

if [ "${BRANCH_NAME}" == "" ]; then
    echo "You must specify a branch name to deploy."
    exit 1
else
    echo "Checking out ${BRANCH_NAME} ..."
    git checkout ${BRANCH_NAME}
    git pull
    echo

    echo "Collect static ..."
    ${WORKDIR}/opt/python3.5.1/bin/python3 ${WORKDIR}/${SRCDIR}/manage.py collectstatic --noinput --settings=${SETTINGS_FILE} > /dev/null 2>&1

    echo "Installing requirements ..."
    ${WORKDIR}/opt/python3.5.1/bin/pip3 install -r ${WORKDIR}{$SRCDIR}requirements.txt

    echo "Moving passenger script"
    cp ${WORKDIR}${SRCDIR}/passenger_wsgi.py ${WORKDIR}/navalsystemsinc/

    echo "Done"
  fi
fi