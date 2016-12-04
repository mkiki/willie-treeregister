/**
 * willie-treeregister - Module definition
 *
 */
// (C) Alexandre Morin 2016

const fs = require('fs');
const extend = require('extend');

const Log = require('wg-log').Log;
const Exception = require('wg-log').Exception;
const utils = require('wg-utils');
const Database = require('wg-database').Database;

const ModuleConfig = require('./config.js');

const log = Log.getLogger('willie-treeregister::module');


/** ================================================================================
  * Module life cycle
  * ================================================================================ */

/**
 * 
 * @class Module
 */
function Module() {
  this.config = undefined;
  this.moduleConfig = ModuleConfig.defaultConfig;
  this.modules = [];
}

/**
 * Start the module.
 * @memberOf Module
 *
 * @param config - Willie application configuration
 * @param modules - Array of willie modules
 */
Module.prototype.start = function(config, moduleConfig, modules, callback) {
  var that = this;
  log.debug("Starting module");
  moduleConfig = extend(true, {}, ModuleConfig.defaultConfig, moduleConfig);
  return ModuleConfig.check(moduleConfig, function(err) {
    if (err) return callback(new Exception(undefined, "Configuration fail checked", err));
    log.debug({err:err, moduleConfig:moduleConfig}, "Configuration loaded.");
    if (err) return callback(err);
    that.config = config;
    that.moduleConfig = moduleConfig;
    that.modules = modules;
    log.debug("Module started");
    return callback();
  });
}

/**
 * Shuts down the module.
 * @memberOf Module
 *
 * @param {Module~shutdown_callback} callback - is the return function
 */
Module.prototype.shutdown = function(callback) {
  log.debug("Shutting down module");
  var that = this;
  return callback();
}
/**
 * Callback for the shutdown function.
 * @ignore
 *
 * @callback Module~shutdown_callback
 * @param err - is the error code/message
 *
 * @see shutdown
 */





/** ================================================================================
  * Module commands
  * ================================================================================ */

/**
 * Parse command line arguments and run command.
 * @memberOf Module
 * 
 * @param {string[]} argv - Command args, shifted, so that the first item (index 0) represents the command name
 * @param {Module~command_callback} callback - is the return function
 */
Module.prototype.command = function(argv, callback) {
  var that = this;
  var command = process.argv[0];  // command

  // Decode module options
  while (command && command[0]==='-') {
    log.warn({ arg:command}, "Ignoring parameter");
    command = process.argv[0];
    process.argv.shift();
  }
  argv.shift();

  return callback(new Exception({command:command}, "Invalid command"));
}
/**
 * Callback for the command function.
 *
 * @callback Module~command_callback
 * @param err - is the error code/message
 *
 * @see command
 */


/**
 * help command: display help
 * @memberOf Module
 * @return a multi-line string containing the module help
 */
Module.prototype.getHelpString = function() {
  var that = this;
  var help = "Tree Register\n"
           + "Options:\n"
           + "    No options for this module\n"
           + "Commands:\n"
           + "    No commands for this module\n";
  return help;
}


/**
 * Load a module file
 * @param {string} relativePath - is the file name, relative to the module root
 * @param {function} callback - is the return function, passing the file contents
 */
Module.prototype.loadTextFile = function(relativePath, callback) {
  var filename = __dirname + '/../' + relativePath;
  log.debug({filename:filename}, "Loading text file from module");
  return fs.readFile(filename, 'utf8', function(err, contents) {
    return callback(err, contents);
  });
}


/**
 * Public interface
 */
module.exports = Module;

