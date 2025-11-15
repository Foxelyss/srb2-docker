#!/bin/bash

cd /SRB2/ || exit

ADDONS=$(ls /addons)

if [ -z "$ADDONS" ]; then
    /SRB2/lsdl2srb2 -dedicated -config adedserv.cfg -home /data $*
    exit
fi

# Intentional word splitting
/SRB2/lsdl2srb2 -dedicated -config adedserv.cfg -home /data $* -file $ADDONS
