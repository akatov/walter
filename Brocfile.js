/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp({
  hinting: false
});

app.import({
  development: 'vendor/jqueryui/jquery-ui.js',
  production: 'vendor/jqueryui/jquery-ui.min.js'
});

app.import('vendor/markdown/lib/markdown.js');
app.import('vendor/bootstrap/dist/css/bootstrap.css');
app.import('vendor/ember-addons.bs_for_ember/dist/js/bs-core.min.js')
app.import('vendor/ember-addons.bs_for_ember/dist/js/bs-alert.min.js')

// Use `app.import` to add additional libraries to the generated
// output files.
//
// If you need to use different assets in different
// environments, specify an object as the first parameter. That
// object's keys should be the environment name and the values
// should be the asset to use in that environment.
//
// If the library that you are including contains AMD or ES6
// modules that you would like to import into your application
// please specify an object with the list of modules as keys
// along with the exports of each module as its value.

module.exports = app.toTree();
