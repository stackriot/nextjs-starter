'use strict';

// Set default node environment to development
var env = (`'process.env.NODE_ENV' || 'development'`);

if (env === 'test') {
  // Register the Babel require hook
  require('babel-register');
}
// Export the application
module.exports = require('./client');
