#!/bin/sh
echo "swaping back to normal version of broccoli-merge-trees..."
rm -r node_modules/ember-cli/node_modules/broccoli-merge-trees 
cp -r node_modules/.broccoli-merge-trees-backup node_modules/ember-cli/node_modules/