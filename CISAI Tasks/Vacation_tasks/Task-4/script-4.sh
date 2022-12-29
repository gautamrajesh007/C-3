#!/bin/bash

string=$(cat rot13.txt)

rot13=$(echo "$string" | tr 'A-Za-z' 'N-ZA-Mn-za-m')

echo "$rot13"