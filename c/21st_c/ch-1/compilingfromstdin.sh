#!/bin/bash

export go_libs="-lm"
export go_flags="-g -Wall -include allheads.h -03"
alias go_c="c99 -xc -- - $go_libs $go_flags"
