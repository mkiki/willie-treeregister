# Willie treeregister module


## Installation

	npm link wg-log
	npm link wg-utils
	npm link wg-database
	npm install


## Database

The core module provides the following database entities

* Points of interest (```treeregister_poi```)
* Trees (```treeregister_poi_tree```) 


## APIs

### Get the list of trees

	type: 'GET'
	url: '/trees/trees'
	dataType: 'json'




## Pages

### Tree list

	url: '/trees/trees.html'

### Tree map

	url: '/trees/map.html'



## Changelog

1.3.0 - Cleanup, push to github

## License

### Tree icons

[Tree vector designed by Freepik](http://www.freepik.com/free-photos-vectors/tree)

### KML files for french departments

https://www.touraineverte.fr/google-maps-api-version-3/exemple-tutoriel-fichiers-kml-kmz/fichier-kml-kmz-departements-france-francais.html

Les fichiers KML, listés ci-dessous, vous sont proposés gratuitement par le site https://www.touraineverte.fr.
Ils ont été élaborés à partir des données du produit GEOFLA® qui sont utilisables gratuitement sous licence Etalab.
La réutilisation de GEOFLA® est gratuite pour tous les usages, y compris commerciaux.

Etalab a conçu la « Licence Ouverte / Open Licence », élaborée en concertation avec l’ensemble des acteurs concernés, pour faciliter et encourager la réutilisation des données publiques mises à disposition gratuitement.
Cette licence ouverte, libre et gratuite, apporte la sécurité juridique nécessaire aux producteurs et aux réutilisateurs des données publiques.

Pour en savoir plus sur GEOFLA® : http://professionnels.ign.fr/sites/default/files/DC_GEOFLA_2-2.pdf.
