#!/bin/bash

pattern=$(cat)

number=$(echo "$pattern" | sed 's/|/1/g; s/_/0/g; s/ /2/g')

echo "$number"
