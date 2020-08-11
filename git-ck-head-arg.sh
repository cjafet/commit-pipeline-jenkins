#!/bin/sh

# remove any policy directories
rm -rf policy policy_b

# get policy directory
git checkout HEAD -- $1/

# move policy to root directory
mv $1/* ./

