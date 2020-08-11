#!/bin/sh

rm -rf policy policy_b

git checkout HEAD -- $1/

mv $1/* ./

