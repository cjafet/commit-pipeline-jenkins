# Copy an empty repo
git clone --no-checkout https://github.com/cjafet/commit-pipeline-jenkins.git

# Move into the empty dir
cd policy

# Initialize sparse-checkout
git sparse-checkout init --cone

# Set/Checkout folder
git sparse-checkout set policy
