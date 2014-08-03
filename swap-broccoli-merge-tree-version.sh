#!/bin/sh
echo "swaping to latest broccoli-merge-trees..."
mv node_modules/ember-cli/node_modules/broccoli-merge-trees node_modules/.broccoli-merge-trees-backup
cp -r node_modules/broccoli-merge-trees node_modules/ember-cli/node_modules/
