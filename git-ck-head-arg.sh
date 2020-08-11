#!/bin/sh

rm -rf policy policy_b

# get policy directory
git checkout HEAD -- $1/

mv $1/* ./

