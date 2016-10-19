#! /bin/bash
set -e

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "master" ]; then
    echo "Skipping deploy, just doing a build."
    make build-production
    exit 0
fi

openssl aes-256-cbc -K $encrypted_f1a1fc64b30f_key -iv $encrypted_f1a1fc64b30f_iv -in .travis/id_rsa.enc -out ~/.ssh/id_rsa -d
chmod 600 ~/.ssh/id_rsa
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa
cp .travis/ssh_config ~/.ssh/config

make build-production

# echo "Syncing master to coding.net"
# git remote add coding git@git.coding.net:$TRAVIS_REPO_SLUG.git
# git checkout master
# git push coding master

echo "Deploying site"

# Store the current commit hash
CURRENT_COMMIT_HASH=$(git rev-parse --short HEAD)

rm -rf .deploy
git clone git@github.com:$TRAVIS_REPO_SLUG.git .deploy
cd .deploy
git checkout gh-pages
git pull origin gh-pages

# Remove all files exclude .git and .gitignore
find . -maxdepth 1 ! -name . ! -name .git ! -name .gitignore | xargs rm -rf

# rsync all contents
rsync -avzh ../_site/ .

git add -A
git commit -m "Deploy $CURRENT_COMMIT_HASH"
git push origin gh-pages
