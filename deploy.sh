#!/usr/bin/env sh

# abort on errors
set -e

# clean dist folder
rm -rf dist

# build
yarn build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'untied.world' > CNAME


git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:ankhuve/ankhuve.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:untiedworld/untied-home.git master:gh-pages

cd -
