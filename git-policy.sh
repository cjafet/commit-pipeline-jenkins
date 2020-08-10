#!/bin/sh

# Copy an empty repo 
git clone --no-checkout https://github.com/cjafet/commit-pipeline-jenkins.git

# Move into the cloned directory
cd commit-pipeline-jenkins

# Set/Checkout folder
git sparse-checkout set policy
