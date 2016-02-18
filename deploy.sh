#!/bin/bash

WORKDIR="/home/nsishell/"
HOMEDIR="navalsystemsinc/"
PROJECT="nsi"
GITURL="git@github.com:jackson0810/nsi.git"
DOCROOT="/home/nsishell/nsi"

cd ${WORKDIR}${HOMEDIR}

echo "Pulling from bitbucket (${GITURL}) and deploying..."

if [ ! -d ${WORKDIR}${HOMEDIR}${PROJECT} ]; then
    git clone ${GITURL}
fi

echo "Switching to the source directory"
cd ${WORKDIR}${HOMEDIR}${PROJECT}
git pull
echo

echo "Available local and remote branches:"
git branch -a
echo

echo "Enter the branch you wish to deploy: "
read  BRANCH_NAME

if [ "${BRANCH_NAME}" == "" ]; then
    echo "No branch specified. Using master..."
    BRANCH_NAME='master'
fi

echo "Checking out ${BRANCH_NAME} ..."
git checkout ${BRANCH_NAME}
git pull
echo

echo "Collect static ..."
${WORKDIR}${HOMEDIR}env/bin/python3 manage.py collectstatic --noinput --settings=nsi.settings.production

echo "Installing requirements ..."
${WORKDIR}${HOMEDIR}env/bin/pip3 install -r requirements.txt

echo "Moving passenger script"
cp passenger_wsgi.py ${WORKDIR}${HOMEDIR}

touch ${WORKDIR}${HOMEDIR}tmp/restart.txt

echo "Done"
