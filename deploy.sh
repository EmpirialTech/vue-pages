#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push --set-upstream git@github.com:EmpirialTech/vue-pages.git master

cd -
