#!/bin/bash

##############################################################################################
# Filename   : test.sh                                                                       #
# Author     : Allen Yin                                                                      #
# Created    : 2025-Mar                                                                       #
# Purpose    : test the node api response                                                     #
# Reference  : https://docs.cronos-pos.org/cronos-pos-integration/node-and-rpc-setup-notes    #
##############################################################################################


curl --cert docker/client/client.crt \
     --key docker/client/client.key \
     --cacert docker/certs/ca.crt \
     https://bc-challenge.dev.x.x:8001