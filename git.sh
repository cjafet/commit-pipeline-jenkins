# Copy an empty repo 
git clone --no-checkout https://github.com/cjafet/commit-pipeline-jenkins.git

# Move into the policy directory
cd commit-pipeline-jenkins

# Initialize sparse-checkout
# Clone files in the root 
git sparse-checkout init --cone

# Set/Checkout folder
git sparse-checkout set policy
