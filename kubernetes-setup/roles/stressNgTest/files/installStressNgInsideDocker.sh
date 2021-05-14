#!/bin/bash
apt install stress-ng
apt update

stress-ng --cpu 4 -l 100 --vm 1 --hdd 1 --fork 1000 --switch 1 --timeout 90s --metrics >> logs/results.txt

