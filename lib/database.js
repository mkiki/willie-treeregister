/**
 * willie-treeregister - Database access
 */
// (C) Alexandre Morin 2016

const Log = require('wg-log').Log;
const Exception = require('wg-log').Exception;
const Database = require('wg-database').Database;

const log = Log.getLogger('willie-treeregister::database');



/**
 * @module treeregister/database
 */

/** ================================================================================
  * Type definitions
  * ================================================================================ */

/**
 * @typedef POI
 * @property {string} uuid - The unique database identifier (UUID)
 * @property {string} name - The POI name
 * @property {string} description - The POI description
 * @property {string} icon - The POI icon URL
 * @property {string} type - The POI type (ex: "tree")
 * @property {boolean} visited - Indicates whether the POI has been visited or not
 * @property {string[]} pictures - 5 main pictures for this POI
 * @property {number} latitude - The POI latitude
 * @property {number} longutude - The POI longutude
 * @property {number} accuracy - The POI location accuracy, in meters
 * @property {string} location - 
 * @property {string} directions - 
 * @property {string} city - 
 * @property {string} county - 
 * @property {string} country - 
 * @property {string} source - 
 * @property {string} sourceURL - 
 * @property {Tree} tree - 
 * @property {string} cover.uuid - The database identifier of the cover of an album for this POI
 */

/**
 * @typedef Tree
 * @property {string} specieslatin - The name of the tree species, in latin
 * @property {string} speciesvernacular - The name of the tree species
 * @property {number} height - The tree height
 * @property {number} girth - The tree grith
 * @property {number} agemin - The tree minimum age estimate
 * @property {number} agemax - The tree maximum age estimate
 */



/**
 * Load trees from the POI database
 *
 * @param {Object} db is the database connection
 * @param {Object} userContext is the user context information to check rights again
 * @param {String} bySpecies is an optional search criteria by species (latin or vernacular). Search is case insensitive
 * @param {String} byGirth is an optional search criteria by firth. For now this is an exact match
 * @param {Function} callback is the return callback function
 *                              err is the error code/message
 *                              trees is the array of POI / trees matching the criteria
 *
 * TODO: girth filter should not be an exact match be about x%
 * TODO: specied filter should be fuzzy (ex: LIKE %...%)
 */
loadTrees = function(db, userContext, bySpecies, byGirth, callback) {

  if (!userContext)
    return callback(db.requiresRights("loadTrees requires a user context"));
  return db.withConnection(function(client, callback) {    

    var query = "SELECT poi.id, poi.name, poi.description, poi.icon, poi.type " +
                ", poi.latitude, poi.longitude, poi.accuracy, poi.location, poi.directions, poi.city, poi.county, poi.country " +
                ", poi.source, poi.sourceURL, poi.visited " +
                ", poi.picture01, poi.picture02, poi.picture03, poi.picture04, poi.picture05" +
                ", tree.speciesLatin, tree.speciesVernacular " +
                ", tree.height, tree.girth, tree.ageMin, tree.ageMax " + 
                ", cover.id AS coverId " +
                "FROM treeregister_poi poi " +
                "LEFT JOIN treeregister_poi_tree tree ON (poi.id = tree.poiId AND poi.type = 'tree') " +
                "LEFT OUTER JOIN photos_images cover ON (poi.coverid = cover.id) ";
    var bindings = [];
    var index = 0;

    if (bySpecies !== null && bySpecies !== undefined && bySpecies !== '') {
      index = index + 1;
      query = query + " AND (LOWER(tree.speciesLatin) = LOWER($" + index + ") OR LOWER(tree.speciesVernacular) = LOWER($" + index + ")) ";
      bindings.push(bySpecies);
    }
    if (byGirth !== null && byGirth !== undefined && byGirth !== '') {
      index = index + 1;
      query = query + " AND girth = $" + index + " ";
      bindings.push(byGirth);
    }

    // TODO: Apply rights
//    if (!userContext.isAdmin)
//      query = query + " AND poi.ownerId = '" + userContext.user.uuid + "'";

    return db.query(client, "loadTrees", query, bindings, function(err, result) {
      if (err) return callback(err);
      var trees = [];
      for (var i=0; i<result.length; i++) {
        var row = result[i];
        var tree = {
          uuid:                 row["id"],
          name:                 row["name"],
          description:          row["description"],
          icon:                 row["icon"],
          type:                 row["type"],
          visited:              row["visited"],
          pictures: [
                                row["picture01"],
                                row["picture02"],
                                row["picture03"],
                                row["picture04"],
                                row["picture05"]
          ],
          latitude:             row["latitude"],
          longitude:            row["longitude"],
          accuracy:             row["accuracy"],
          location:             row["location"],
          directions:           row["directions"],
          city:                 row["city"],
          county:               row["county"],
          country:              row["country"],
          source:               row["source"],
          sourceURL:            row["sourceurl"],
          tree: {
            speciesLatin:       row["specieslatin"],
            speciesVernacular:  row["speciesvernacular"],
            height:             row["height"],
            girth:              row["girth"],
            ageMin:             row["agemin"],
            ageMax:             row["agemax"],            
          },
          cover: {
            uuid:               row["coverid"],
          }

        };
        trees.push(tree);
      }
      return callback(null, trees);
    });

  }, callback);
}


/**
 * Public interface
 * @ignore
 */
module.exports = {
  loadTrees:    loadTrees
};
