#!/bin/bash

rem_host=$1

cat $HOME/.ssh/id_dsa.pub | ssh $rem_host "cat >> ~/.ssh/authorized_keys"

