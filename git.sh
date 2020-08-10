# Copy an empty repo 
git clone --no-checkout https://github.com/cjafet/commit-pipeline-jenkins.git .

# Move into the policy directory
cd policy

# Initialize sparse-checkout
git sparse-checkout init --cone

# Set/Checkout folder
git sparse-checkout set policy
