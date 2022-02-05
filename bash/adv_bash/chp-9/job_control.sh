#!/bin/bash

possibly_hanging_job & { sleep ${TIMEOUT}; eval 'kill -9 $!' &> /dev/null;}
# Forces completioin of an ill-behaved program.
# Usefl, for example, in init scripts.


# Thank you, Sylvain Fourmanoit, for this creative use of the "!" variable.
