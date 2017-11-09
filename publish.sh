#!/bin/bash

jupyter-nbconvert --to slides Data_Mining_2017_11_09.ipynb --reveal-prefix=reveal.js
mv Data_Mining_2017_11_09.slides.html  index.html
mkdir -p /tmp/workspace
cp -r * /tmp/workspace/
git add -A .
git commit -m "Update"
git checkout -B gh-pages
cp -r /tmp/workspace/* .
git add -A .
git commit -m "new version"
git push origin master gh-pages
git checkout master
rm -rf /tmp/workspace
