#!/bin/sh
echo "running `npm update`"
npm update
echo "hack: using specific version of broccoli-merge-trees"
rm node_modules/ember-cli/node_modules/broccoli-merge-trees
cp -r node_modules/broccoli-merge-trees node_modules/ember-cli/node_modules/
echo "TODO: clean this up when next version of ember-cli is released"
