#!/bin/bash

# read-default: supply default value if user presses enter key.

read -e -p "What is your user name? " -i $USER
echo "You answered: '$REPLY'"
