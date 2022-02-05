#!/bin/bash

echo -e "current time: $(date) \n"
echo -e "current login: $(who -s | cut -c 1-8)\n"
echo -e "system uptime:$(uptime)"

