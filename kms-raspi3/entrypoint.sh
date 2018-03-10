#!/bin/bash
#########################################################################
# File Name: entrypoint.sh
# Version:0.1.20180224
# Created Time: 2018-02-24
#########################################################################

set -e

echo "+---------------------------------------------+"
echo "|            KMS Server On Docker             |"
echo "+---------------------------------------------+"
echo "|            Images:{kms-docker}              |"
echo "+---------------------------------------------+"
echo "|     Intro: https://github.com/ileez         |"
echo "+---------------------------------------------+"
echo ""

echo "Start KMS Service..."
/usr/bin/python2.7 /usr/local/py-kms/server.py -v 0.0.0.0 1688
