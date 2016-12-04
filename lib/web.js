/**
 * @file willie-treeregister - Web application
 */
// (C) Alexandre Morin 2016

/**
 * @ignore
 */

const extend = require('extend');

const Log = require('wg-log').Log;
const Exception = require('wg-log').Exception;

const log = Log.getLogger('willie-treeregister::web');
const treedb = require('./database.js');

/**
 * @module core/web
 */

/** ================================================================================
  * Web App Lifecycle
  * ================================================================================ */

/**
 */
function WebApp(helper, module) {
  this.helper = helper;
  this.module = module;
}

/**
 * Start the web application
 * 
 * @param helper -
 * @param callback - 
 */
WebApp.prototype.start = function(express, app, callback) {
  var that = this;

  app.use('/trees/css',                   express.static(__dirname + "/../css"));
  app.use('/trees/js/shared',             express.static(__dirname + "/../shared"));
  app.use('/trees/js',                    express.static(__dirname + "/../js"));
  app.use('/trees/images',                express.static(__dirname + "/../images"));
  app.use('/trees/geo',                   express.static(__dirname + "/../geo"));
  
  app.get('/trees/trees.html',            function(req, res) { return that.trees(req, res); });
  app.get('/trees/map.html',              function(req, res) { return that.map(req, res); });
  app.get('/trees/trees',                 function(req, res) { return that.getTrees(req, res); });

  return that.startBackgroundJobs(function(err) {
    if (err) return callback(new Exception({module:that.module.moduleConfig.name}, "Failed to start background jobs", err));
    return callback();
  });
}


/** ================================================================================
  * Background jobs
  * ================================================================================ */

/**
 * Start background jobs
 */
WebApp.prototype.startBackgroundJobs = function(callback) {
  var that = this;
  return callback();
}


/** ================================================================================
  * Views
  * ================================================================================ */

/**
 * This page (trees/trees.html) display a list of trees
 *
 * @param req - HTTP request
 * @param res - HTTP response
 */
WebApp.prototype.trees = function(req, res) {
  var that = this;
  var helper = that.helper;
  log.info("Displaying the 'trees' page");
  return helper.withUserContext(req, res, function(err, db, userContext) {
    if (err) return helper.handleViewError(err, req, res, userContext);
    var options = { 
      title: 'Trees',
      message: 'Trees',
      view: 'cards'
    };
    return helper.render(res, userContext, 'trees', options);
  });
}


/**
 * This page (trees/map.html) display a list of trees
 *
 * @param req - HTTP request
 * @param res - HTTP response
 */
 WebApp.prototype.map = function(req, res) {
  var that = this;
  var helper = that.helper;
  log.info("Displaying the 'map' page");
  return helper.withUserContext(req, res, function(err, db, userContext) {
    if (err) return helper.handleViewError(err, req, res, userContext);
    var options = { 
      title: 'Trees',
      message: 'Trees',
      view: 'map'
    };
    return helper.render(res, userContext, 'trees', options);
  });
}


/** ================================================================================
  * APIs
  * ================================================================================ */

/**
 * Web: get list of trees as a JSON array (facetted search)
 *
 * @param req - HTTP request
 * @param res - HTTP response
 */
WebApp.prototype.getTrees = function(req, res) {
  var that = this;
  var helper = that.helper;
  log.info("Getting list of trees");
  return helper.withUserContext(req, res, function(err, db, userContext) {
    if (err) return helper.handleAPIError(err, req, res, userContext);
    return helper.getParameters(['bySpecies', 'byGirth'], req, function(err, params) {
      if (err) return helper.handleAPIError(err, req, res, userContext);
      log.info({ bySpecies:params.bySpecies }, "Retreiving trees (trees)");
      return treedb.loadTrees(db, userContext, params.bySpecies, params.byGirth, function(err, trees) {
        if (err) return helper.handleAPIError(err, req, res, userContext);
        return helper.sendJSON(trees, req, res);
      });
    });
  });
}



/**
 * Public interface
 * @ignore
 */
module.exports = WebApp;

