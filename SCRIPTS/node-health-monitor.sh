#!/bin/bash

####################
# Author: Anurag
# Date: 05/12/2025
#
# This script outputs the node health
#
# Version: v1
####################
set -x

df -h

free -g

nproc

ps -ef | grep "amazon" 