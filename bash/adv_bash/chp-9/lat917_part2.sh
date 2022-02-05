#!/bin/bash

echo | awk "{srand(); print rand() * 1000 % 100}"
