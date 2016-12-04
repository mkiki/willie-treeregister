--------------------------------------------------------------------------------
-- willie-treeregister - Update database structure
--------------------------------------------------------------------------------

DO $$
DECLARE
  ver varchar;
BEGIN
  EXECUTE 'SELECT value FROM core_options WHERE name = ''treeregister.databaseVersion''' INTO ver;

  LOOP

  	RAISE NOTICE '[Module treeregister] Database version is %', ver;

	--------------------------------------------------------------------------------
	-- Version 0, create the option
	--------------------------------------------------------------------------------
  	IF ver IS NULL or ver = '0.0' THEN
  		INSERT INTO core_options (name, value, builtin) VALUES ('treeregister.databaseVersion', '0.0', true);
  		ver = '1.0';

	--------------------------------------------------------------------------------
	-- Version 1, POI (points of interest) table
	--------------------------------------------------------------------------------
  	ELSIF ver = '1.0' THEN
		CREATE TABLE treeregister_poi (
			id              uuid primary key default uuid_generate_v4(),             -- record identifier
			name   				  varchar(1024) NOT NULL,             	                   -- name of the POI
			description     varchar(8192),							                             -- long description / comment of the POI
			icon 				    varchar(128) NOT NULL DEFAULT 'poi',	                   -- small icon to represent on map
			type				    varchar(32) NOT NULL,					                           -- type of POI
			-- contact information
			address				  varchar(2048),							                             -- physical address
			url					    varchar(1024),							                             -- web site URL
			phone				    varchar(64),
			openingTimes		varchar(256),
			-- location details
			latitude			  real NOT NULL,					                              	 -- latitude of the POI
			longitude			  real NOT NULL,					                              	 -- longitude of the POI
			accuracy			  real NOT NULL,					                              	 -- accuracy of the lat, lng position - in meters
			location			  varchar(1024),					                              	 -- location name (ex: Shane Castle)
			directions			varchar(4096),					                              	 -- how to get there?
			city				    varchar(1024),					                              	 -- City (ex: Antrim)
			county 				  varchar(128),					                              	   -- County (ex: co. Antrim)
			country 			  varchar(128) NOT NULL,			                             -- Country (ex: Ireland)
			-- source of data
			source				  varchar(256),																					   -- Source (ex: treecouncil.ie)
			sourceURL			  varchar(1024),																					 -- Source URL (ex: http://treecouncil.ie/treeregisterofireland/972.htm)
			--
			ownerId 			  uuid REFERENCES core_users(id) default 'ab8f87ea-ad93-4365-bdf5-045fee58ee3b',
			albumId 			  uuid REFERENCES photos_tags(id),
			coverId 			  uuid REFERENCES photos_images(id),
			visited 			  boolean NOT NULL DEFAULT FALSE,
			--
			picture01 			varchar(512),																						 -- Picture #1 (url)
			picture02 			varchar(512),																						 -- Picture #2 (url)
			picture03 			varchar(512),																						 -- Picture #3 (url)
			picture04 			varchar(512),																						 -- Picture #4 (url)
			picture05 			varchar(512)																						 -- Picture #5 (url)
		);
		ver = '1.1';
  	ELSIF ver = '1.1' THEN
  		CREATE UNIQUE INDEX poi_name ON treeregister_poi (name);
  		ver = '2.0';

	--------------------------------------------------------------------------------
	-- Version 2, trees table (overflow of POI)
	--------------------------------------------------------------------------------
  	ELSIF ver = '2.0' THEN
		CREATE TABLE treeregister_poi_tree (
			poiId           	uuid REFERENCES treeregister_poi(id),	                 -- foreign key to POI table (overlay table sharing same PK)
			speciesLatin		  varchar(1024),             														 -- specied name (in latin)
			speciesVernacular varchar(1024),             											       -- specied name (vernacular)
			height				    real,																							 		 -- tree height, in meters
			girth				      real,																							 		 -- tree girth, in meters
			ageMin				    real,																							 		 -- tree age (min estimation)
			ageMax				    real,																							 		 -- tree age (max estimation)
			situation			    varchar(256),							     												 -- situation (ex: Individual tree)
			heritageValue		  varchar(256),							     												 -- heritage value (ex: Exceptional Specimen Trees ; Habitat value ; Form part of historic landscapes)
			type				      varchar(256) 							     												 -- tree Type (single tree or group of tree)
		);
		ver = '2.1';
	ELSIF ver = '2.1' THEN
		CREATE INDEX tree_species1 ON treeregister_poi_tree (LOWER(speciesLatin));
		ver = '2.2';
	ELSIF ver = '2.2' THEN
		CREATE INDEX tree_species2 ON treeregister_poi_tree (LOWER(speciesVernacular));
		ver = '2.3';
	ELSIF ver = '2.3' THEN
		CREATE UNIQUE INDEX tree_id ON treeregister_poi_tree (poiId);
		ver = '3.0';


  	ELSE
  		EXIT;
  	END IF;

  END LOOP;

  UPDATE core_options SET value = ver WHERE name = 'treeregister.databaseVersion';

EXCEPTION WHEN OTHERS THEN
	RAISE NOTICE '% - %', SQLSTATE, SQLERRM;
	UPDATE core_options SET value = ver WHERE name = 'treeregister.databaseVersion';
END $$;

