/**
 * @file willie-treeregister - Module configuration
 */
// (C) Alexandre Morin 2016

/**
 * @module core/config
 */

/**
 * @typedef config
 * @property {string} name - Module name (camel-case, no spaces)
 * @property {string} path - Module path (on file system)
 * @property {string} version - Module version (major.minor.micro)
 * @property {menuItem[]} homeMenu - list of menu items to insert on the application home page (/). The index attribute is used to control the display order
 * @property {menuItem[]} sideMenu - list of menu items to insert on the left-side menu. The index attribute is used to control the display order
 */

/**
 * @typedef menuItem
 * @property {string} name - Menu identifier (camel-case, no spaces)
 * @property {string} label - Menu title (human readable)
 * @property {string} href - Link to navigate to when clicking menu
 * @property {string} icon - Menu icon (svg 24x24)
 * @property {string} index - Menu index, used to determine in which order to display menu items relative one to another
 */


/**
 * @ignore
 */
const Log = require('wg-log').Log;
const Exception = require('wg-log').Exception;


const defaultConfig = {
  name: "treeregister",
  path: __dirname + "/..",
  version: "1.0",

  // list of menu items to insert on the application home page (/). The index attribute is used to control the display order
  homeMenu: [
  	{ label:"Tree Register", href:"trees/trees.html", index:200 }
  ],

  // list of menu items to insert on the left-side menu. The index attribute is used to control the display order
  "sideMenu": [
  	{ name:"treeregister:trees", 	label:"Trees", 		href:"/trees/trees.html", 	icon:"/trees/images/trees.svg", 	index:200 }
  ]

}

function _checkConfig(config, callback) {
  return callback(undefined, config);
}

/**
 * Public interface
 * @ignore
 */
module.exports = {
  defaultConfig: defaultConfig,
  check: _checkConfig
}
