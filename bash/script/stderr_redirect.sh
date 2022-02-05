#!/usr/bin/bash

ls -l /bin/usr > ls-output.text 2>&1 #sh compatible
ls -l /bin/usr &> ls-output.txt #bash only
