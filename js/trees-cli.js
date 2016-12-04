/**
 * Tree Register - Display list of trees (client-side code)
 */
// (C) Alexandre Morin 2015 - 2016

// Thumbs flavor for image overview
var flavor = "386x258";

// Cache POI (key=uuid, value=poi)
var pOICache = {};


/** ================================================================================
  * Geoloc (Google Maps)
  * ================================================================================ */

// Callback to initialize google map
function initMap() {
}



/** ================================================================================
  * Display POIs in cards
  * ================================================================================ */
function refreshAsCards(canvas, poisUUIDs) {
  $('#infos').toggle(false);
  $(canvas).children().remove();
  $(canvas).empty();
  for (var i=0; i<poisUUIDs.length; i++) {
    var uuid = poisUUIDs[i];
    var $item = addPOIItem($(canvas), uuid);
  }
}

function addPOIItem($canvas, uuid) {
  var poi = pOICache[uuid];
  if (!poi) return;

  var $item = $("<div class='canvas-album-item'></div>");

  var $thumb = $("<div class='canvas-album-item-thumb'></div>").appendTo($item);

  if (poi.cover.uuid) {
    var $img = $("<img class='canvas-album-item-image'></img>").appendTo($thumb);
    $img.attr("src", "/thumb/" + flavor + "/" + poi.cover.uuid);
  }

  var $captionBack = $("<div class='canvas-album-caption-background'></div>").appendTo($item);
  
  var $caption = $("<div class='canvas-album-caption'></div>").appendTo($captionBack);
  var $name = $("<div class='canvas-album-item-name'></div>").appendTo($caption); $name.text(poi.name);
  
  var $subCaption = $("<div class='canvas-album-item-dateRange'></div>").appendTo($caption); 
  var text = poi.tree.speciesVernacular;
  if (poi.tree.girth && poi.tree.girth > 0) {
   text = text + "  ·  " + poi.tree.girth + "m";
  }
  $subCaption.text(text);
  
  /*
  var $interceptor = $("<div class='canvas-album-item-interceptor'></div>").appendTo($item);
  $interceptor.click(function(event) {
    var url = "/photos/photos.html?tag=" + encodeURIComponent(uuid);
    window.location = url;
  });
  */

  $canvas.append($item);
  return $item;
}

/** ================================================================================
  * Display POIs in a map
  * ================================================================================ */

function refreshAsMap(canvas, poisUUIDs) {
  $('#map').toggle(true);
  $('#infos').toggle(true);

  var position = { lat:47.409442, lng:2.885504 };
  var map = new google.maps.Map(document.getElementById('map'), {
    center: position,
    zoom: 9,
    mapTypeId: google.maps.MapTypeId.TERRAIN
  });

  function addPOIToMap(poi) {
    if (poi === undefined || poi === null) return;
    var position = { lat:poi.latitude, lng:poi.longitude };
    var marker = new google.maps.Marker({
      position: position,
      animation: google.maps.Animation.DROP,
      icon: '/trees/images/' + poi.icon + (poi.visited ? '-visited' : '') + '.png',
      map: map,
      title: poi.name
    });
    marker.addListener('click', function() {
      displayPOIInfos(poi);
    });

  }

  for (var i=0; i<poisUUIDs.length; i++) {
    var uuid = poisUUIDs[i];
    var poi = pOICache[uuid];
    addPOIToMap(poi);
  }

  // Department
  // ## TODO should use the correct URL
  var departmentKML = undefined;
  $("#department-select").change(function() {
    if (departmentKML) departmentKML.setMap(null);
    var dpt = parseInt($("#department-select").val(), 10);
    if (dpt === 0) {
      // No department
    }
    else {
      if (dpt<10) dpt = "0" + dpt;
      departmentKML = new google.maps.KmlLayer({
        map: map,
        url: "http://loulex.com/geo/france/" + dpt + ".kml"
      });      
    }
  });

  // Instantiate a directions service.
  var directionsService;
  var directionsDisplay;
  $('#it-go').click(function() {
    if (!directionsService) directionsService = new google.maps.DirectionsService;
    if (!directionsDisplay) directionsDisplay = new google.maps.DirectionsRenderer({
      map: map
    });
    var from = $("#it-from").val();
    var to = $("#it-to").val();
    directionsService.route({
      origin: from,
      destination: to,
      travelMode: google.maps.TravelMode.DRIVING
    }, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
      } else {
        // TODO manage error
        // window.alert('Directions request failed due to ' + status);
      }
    });
  });

}

// Display POI infos on the side bar
function displayPOIInfos(poi) {
  $info = $('#tree-info');
  $info.children().remove();
  $info.empty();

  $('<h1 class="tree-info-name"></<h1>').text(poi.name).appendTo($info);
  $('<h2 class="tree-info-location"></h2>').text(poi.city).appendTo($info);
  function addAttr(label, value, url) {
    if (value !== undefined && value !== null & value != "") {
      var $attr = $('<div class="tree-info-attr"></div>');
      $('<span class="tree-info-attr-label"></span>').text(label).appendTo($attr);
      if (url === undefined) {
        $('<span class="tree-info-attr-value"></span>').text(value).appendTo($attr);
      }
      else {
        var $span = $('<span class="tree-info-attr-value"></span>');
        var $a = $('<a></a>').text(value).appendTo($span);
        $a.attr('href', url);
        $span.appendTo($attr);
      }
      $attr.appendTo($info);
    }
  }
  if (poi.description !== null && poi.description !== undefined && poi.description !== "") {
    $('<div class="tree-info-description"></div>').text(poi.description).appendTo($info);
  }
  addAttr("Nom commun:", poi.tree.speciesVernacular);
  addAttr("Nom scientifique:", poi.tree.speciesLatin);
  if (poi.tree.height !== null && poi.tree.height !== undefined && poi.tree.height > 0) {
    addAttr("Hauteur:", poi.tree.height + " mètres");
  }
  if (poi.tree.girth !== null && poi.tree.girth !== undefined && poi.tree.girth > 0) {
    addAttr("Circonférence:", poi.tree.girth + " mètres");
  }
  if (poi.tree.ageMin !== null && poi.tree.ageMin !== undefined && poi.tree.ageMin > 0) {
    if (poi.tree.ageMax !== null && poi.tree.ageMax !== undefined && poi.tree.ageMax > 0) {
      addAttr("Age:", "entre " + poi.tree.ageMin + " et " + poi.tree.ageMax + " ans");
    }
    else addAttr("Age:", "> " + poi.tree.ageMin + " ans");
  }
  addAttr("Coordonnées GPS:", poi.latitude + ", " + poi.longitude);
  var cover = undefined;
  if (poi.cover && poi.cover.uuid && poi.cover.uuid !== '') {
    cover = "/thumb/" + flavor + "/" + poi.cover.uuid;
  }
  else if (poi.pictures !== null & poi.pictures !== undefined && poi.pictures.length > 0) {
    var pic = poi.pictures[0];
    if (pic !== null && pic !== undefined && pic != "")
      cover = pic;
  }
  if (cover !== null && cover !== undefined && cover != "") {
    var $imgContainer = $('<div class="tree-info-cover-container"></div>');
    var $img = $('<img class="tree-info-cover"></img>');
    $img.attr("src", cover);
    $img.appendTo($imgContainer);
    $imgContainer.appendTo($info);
  }

  addAttr("Lieu-dit:", poi.location);
  addAttr("Ville:", poi.city);
  addAttr("Département:", poi.county);
  addAttr("Pays:", poi.country);
  if (poi.directions !== null && poi.directions !== undefined && poi.directions != "") {
    $('<div class="tree-info-gutter"></div>').appendTo($info);
    addAttr("Comment y aller:", poi.directions);
  }

  if (poi.source !== null && poi.source !== undefined && poi.source !== '') {
    $('<div class="tree-info-gutter"></div>').appendTo($info);
    addAttr("Source:", poi.source, poi.sourceURL);
  }
  
}


/** ================================================================================
  * Refresh all
  * ================================================================================ */
function refresh() {
  var canvas = document.getElementById("canvas");
  
  // ###
  var view = 'map';

  var url = '/trees/trees';
  return ajax({
    type: 'GET',
    url: url,
    dataType: 'json',
    success: function(pois) {

      var uuids = [];
      if (pois !== null && pois !== undefined && pois.length > 0) {
        for (var i=0; i<pois.length; i++) {
          var poi = pois[i];
          pOICache[poi.uuid] = poi;
          uuids.push(poi.uuid);
        }
      }

      if (view === 'cards') {
        refreshAsCards(canvas, uuids);
      }
      else if (view === 'map') {
        refreshAsMap(canvas, uuids);
      }
    },
    error: function(jqxhr, textStatus, error) {
      flashError("Failed to load trees", jqxhr.status);
    }
  });
}



/**
 * Main
 */
$(function() {
  createMenu(document.sideMenu, "trees");
  
  $('#infos').toggle(false); // no info pannel
  $('.canvas').addClass('canvas-no-infos');
  refresh();
});
