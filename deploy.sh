#!/bin/bash

WORKDIR="/home/nsishell/"
HOMEDIR="navalsystemsinc/"
ENV_ABBR="production"
PROJECT="nsi"
REPO_DIR="nsi_repo"

#echo "Deploy environment (Type 1 for Staging or 2 for Production.): "
#read ENVIRONMENT

#if ["${ENVIRONMENT}" == 2]; then
#    HOMEDIR="n-s-i/"
#    ENV_ABBR="production"
#fi

cd ${WORKDIR}${HOMEDIR}

echo "Switching to the source repo directory for the external site..."
cd ${REPO_DIR}
git pull
echo

echo "Available local and remote branches..."
git branch -a
echo

echo "Enter the branch you wish to deploy: (Leave blank if deploying master)... "
read  BRANCH_NAME

if [ "${BRANCH_NAME}" == "" ]; then
    echo "No branch specified. Using master..."
    BRANCH_NAME='master'
fi

echo "Checking out ${BRANCH_NAME} ..."
git checkout ${BRANCH_NAME}
git pull
echo

echo "Copying code to production directory ..."
rm -rf ${WORKDIR}${HOMEDIR}${PROJECT}
mkdir ${WORKDIR}${HOMEDIR}${PROJECT}
cp -r ${WORKDIR}${HOMEDIR}${REPO_DIR}/* ${WORKDIR}${HOMEDIR}${PROJECT}
rm -rf ${WORKDIR}${HOMEDIR}${PROJECT}/.git

echo "Installing requirements ..."
${WORKDIR}${HOMEDIR}env/bin/pip3 install -r requirements.txt

echo "Running database migrations ..."
${WORKDIR}${HOMEDIR}env/bin/python3 manage.py migrate --settings=nsi.settings.${ENV_ABBR}

echo "Collect static ..."
${WORKDIR}${HOMEDIR}env/bin/python3 manage.py collectstatic --noinput --settings=nsi.settings.${ENV_ABBR}

echo "Installing requirements ..."
${WORKDIR}${HOMEDIR}env/bin/pip3 install -r requirements.txt

echo "Copying ${ENV_ABBR} passenger script to ${WORKDIR}${HOMEDIR}"
cp ${WORKDIR}${HOMEDIR}${REPO_DIR}/passenger_wsgi_${ENV_ABBR}.py ${WORKDIR}${HOMEDIR}

echo "Renaming the script passenger_wsgi_${ENV_ABBR}.py to passenger_wsgi.py"
rm ${WORKDIR}${HOMEDIR}passenger_wsgi.py
mv ${WORKDIR}${HOMEDIR}passenger_wsgi_${ENV_ABBR}.py ${WORKDIR}${HOMEDIR}passenger_wsgi.py

echo "Restarting external site..."
touch ${WORKDIR}${HOMEDIR}tmp/restart.txt

echo "Done"
