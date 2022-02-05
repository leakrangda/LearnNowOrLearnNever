#!/bin/bash

# async-parent: asyncronous execution demo (parent)

echo "Parent: launching child script..."
bash async-child.sh&
pid=$!
echo "parent: child (PID= $pid) launched."

echo "parent: continuing.."
sleep 2

echo "parent: pausing to wait for child to finish.."
wait $pid

echo "parent: child is finished. continuing..."
echo "parent: parent is done.exiting."

