#!/bin/bash

APP_NAME1="ofdatapath-01"

# first quit old screen!
screen -X -S ${APP_NAME1} quit

screen -d -m -S ${APP_NAME1}-softswitch
screen -S ${APP_NAME1}-softswitch -X stuff "./${APP_NAME1}.sh"$(echo -ne '\015')

APP_NAME2="ofprotocol-01"

# first quit old screen!
screen -X -S ${APP_NAME2} quit

screen -d -m -S ${APP_NAME2}
screen -S ${APP_NAME2} -X stuff "./${APP_NAME2}.sh"$(echo -ne '\015')

