/* jshint node: true */

var PROC_ENV = process.env;

/**
 the `environment` variable is read either from `--environment` ember-cli flag
 or the `EMBER_ENV` environment variable */
module.exports = function(environment) {
  var ENV = {
    environment: environment,
    baseURL: PROC_ENV['BASE_URL'] || '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },
    backend: PROC_ENV['API_URL'],
    ENV: PROC_ENV['EMBER_ENV'] || 'fixtures',
    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  if (environment === 'development' || environment === 'fixtures') {
    // LOG_MODULE_RESOLVER is needed for pre-1.6.0
    ENV.LOG_MODULE_RESOLVER = true;

    ENV.APP.LOG_RESOLVER = true;
    ENV.APP.LOG_ACTIVE_GENERATION = true;
    ENV.APP.LOG_MODULE_RESOLVER = true;
    ENV.APP.LOG_TRANSITIONS = true;
    ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    ENV.APP.LOG_VIEW_LOOKUPS = true;
    ENV.APP.LOG_BINDINGS = true;
    ENV.APP.LOG_STACKTRACE_ON_DEPRECATION = true;

    ENV.backend = 'http://localhost:3000'
  }

  if (environment === 'production') {
    ENV.backend = 'http://bluemath-jesse-meta.herokuapp.com'
  }

  return ENV;
};
