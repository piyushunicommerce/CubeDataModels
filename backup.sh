
REPO_DIR="/opt/cubejs/schema/cubes/"
REPO="CubeDataModels"
BRANCH="master"
COMMIT_MESSAGE="Daily Backup"
GITHUB_USERNAME="piyushunicommerce"
GITHUB_TOKEN="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"

# Navigate to the repository directory
cd "$REPO_DIR" || { echo "Repository directory not found"; exit 1; }

# Add changes to the staging area
git add .

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push changes to the specified branch
git push https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${GITHUB_USERNAME}/$(REPO).git "$BRANCH"
