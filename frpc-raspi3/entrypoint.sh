#!/bin/bash
#########################################################################
# File Name: entrypoint.sh
# Version:0.1.20180222
# Created Time: 2018-02-22
#########################################################################

set -e
FRPC_BIN="/usr/local/frpc/frpc"
FRPC_CONF="/usr/local/frpc/frpc.ini"

echo "+---------------------------------------------+"
echo "|              Frpc On Docker                 |"
echo "+---------------------------------------------+"
echo "|       Images:{frpc-docker:0.16.1}           |"
echo "+-----------------------------------------------------------+"
echo "|     Intro: https://github.com/ileez/raspi3-docker         |"
echo "+-----------------------------------------------------------+"
echo ""
if [ ! -r ${FRPC_CONF} ]; then
	    echo "config file ${FRPC_CONF} not found"
	        exit 1
fi
	touch ${FRPC_LOG} > /dev/null 2>&1
	echo "Starting frpc $(${FRPC_BIN} -v) ..."
	echo "${FRPC_BIN} -c ${FRPC_CONF} &
	      ${FRPC_BIN} -c ${FRPC_CONF}
