--------------------------------------------------------------------------------
-- willie-treeregister - Builtin data
--------------------------------------------------------------------------------


DELETE FROM treeregister_poi_tree WHERE poiId IN (
	'f1e07bdf-07b5-4230-a3ea-a5eaf542160c', '83a1d7b7-d206-4631-b7de-f447de8c9778', '71d8e14e-6271-48df-9499-95236314aea7', '954c1773-52ec-4cc1-97ee-9c541c47a4a1',
	'106cdb48-0907-4698-8c21-3e8700500fca', 'c90ae353-a249-4979-bc1b-e451e3fe5af0', 'ce6e45ee-bfa3-422f-b5d5-c5f7364b6244', 'ae08980d-20b6-4cf4-afaa-4f3746d8483e',
	'74f798ff-3cfd-4482-a73f-a3c97c74b45a', 'e59706d5-426a-4f88-b0c9-fbbd3242df43', 'aa749361-dbac-4e85-8b34-c4409b3c2223', 'ac847657-a051-4ffb-9d60-483d70f83865',
	'4cda43de-15eb-497a-8ed9-d23d647139f1', '7f72f0d8-2bce-4e68-8e54-d639cd958364', '52b38c97-d3cd-4589-956e-7b614280884e', '2d6ab96c-7481-467f-b6f1-44bd0e1a432a',
	'a30813a8-cb44-490b-89be-8b05825d94eb', '455ee9fb-8b0d-4e4e-bc93-5470a16db6d4', 'c6fd1411-99af-4430-8ba6-3f120da0e0e6', 'ce689f4e-6de0-4583-b2d4-88abfc1cd9b5',
	'39576bf4-84f2-4506-9e2e-627e0edf3b32', '971bc352-7147-4d15-8af7-f407c4980587', 'c2211650-9374-4655-812b-51cc75760c42', '5f8cef2c-df8e-487b-93ea-2bbf9cffaa57',
	'e3e84569-e23e-4a81-96d1-42394ae72540', '4eaab8a1-e58b-428b-a92c-636d2af90535', 'c4cb7855-6c80-46d3-ba7c-61531df3e55c', 'd5cfd4d6-9d55-471d-b91c-779b3c032b8f',
	'77d8a16c-24ae-4847-8d63-7479f21306ad', 'cab4453a-1f35-47f6-9589-6885c7d96427', 'fdbc5ecc-b5f6-469b-b2e9-60580005197e', 'c115c05c-76c2-41d6-9b3c-5e8813425e09',
	'42e8b7db-7150-4888-bc97-6c4b0c8cc3fb'
);
DELETE FROM treeregister_poi WHERE id IN (
	'f1e07bdf-07b5-4230-a3ea-a5eaf542160c', '83a1d7b7-d206-4631-b7de-f447de8c9778', '71d8e14e-6271-48df-9499-95236314aea7', '954c1773-52ec-4cc1-97ee-9c541c47a4a1',
	'106cdb48-0907-4698-8c21-3e8700500fca', 'c90ae353-a249-4979-bc1b-e451e3fe5af0', 'ce6e45ee-bfa3-422f-b5d5-c5f7364b6244', 'ae08980d-20b6-4cf4-afaa-4f3746d8483e',
	'74f798ff-3cfd-4482-a73f-a3c97c74b45a', 'e59706d5-426a-4f88-b0c9-fbbd3242df43', 'aa749361-dbac-4e85-8b34-c4409b3c2223', 'ac847657-a051-4ffb-9d60-483d70f83865',
	'4cda43de-15eb-497a-8ed9-d23d647139f1', '7f72f0d8-2bce-4e68-8e54-d639cd958364', '52b38c97-d3cd-4589-956e-7b614280884e', '2d6ab96c-7481-467f-b6f1-44bd0e1a432a',
	'a30813a8-cb44-490b-89be-8b05825d94eb', '455ee9fb-8b0d-4e4e-bc93-5470a16db6d4', 'c6fd1411-99af-4430-8ba6-3f120da0e0e6', 'ce689f4e-6de0-4583-b2d4-88abfc1cd9b5',
	'39576bf4-84f2-4506-9e2e-627e0edf3b32', '971bc352-7147-4d15-8af7-f407c4980587', 'c2211650-9374-4655-812b-51cc75760c42', '5f8cef2c-df8e-487b-93ea-2bbf9cffaa57',
	'e3e84569-e23e-4a81-96d1-42394ae72540', '4eaab8a1-e58b-428b-a92c-636d2af90535', 'c4cb7855-6c80-46d3-ba7c-61531df3e55c', 'd5cfd4d6-9d55-471d-b91c-779b3c032b8f',
	'77d8a16c-24ae-4847-8d63-7479f21306ad', 'cab4453a-1f35-47f6-9589-6885c7d96427', 'fdbc5ecc-b5f6-469b-b2e9-60580005197e', 'c115c05c-76c2-41d6-9b3c-5e8813425e09',
	'42e8b7db-7150-4888-bc97-6c4b0c8cc3fb'
);


--------------------------------------------------------------------------------
-- 1. Chêne de la Vierge, Thannenkirch, Haut-Rhin
--------------------------------------------------------------------------------
	
INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'f1e07bdf-07b5-4230-a3ea-a5eaf542160c',
	'Chêne de la Vierge',
	'Appelé "Chêne de la Vierge" ou "Notre Dame des Bois", ce vieux chêne est orné d''une madone qui a été sculptée dans le tronc en 1952. L''arbre se trouve au départ d''un sentier de découverte balisé appelé "Chemin de la carrière" long de 5 kilomètres (environ 3 heures de balade aller/retour).',
	'tree1',
	'tree',
	48.236, 7.311, 0.1,
	'Forêt communale de Bergheim', 'Thannenkirch', 'Haut-Rhin', 'France',
	'Forêt communale de Bergheim, au bord de la RD 42, direction Haut-Koenigsbourg à la sortie de Thannenkirch, en lisière de forêt',
	'Arbres Remarquables dans le Haut-Rhin', '',
	NULL,
	false,
	'/trees/images/trees/FRA - 68 - Chêne de la Vierge/01.jpg', NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'f1e07bdf-07b5-4230-a3ea-a5eaf542160c',
	'Quercus petraea', 'Chêne sessile',
	22, 3, 200, NULL
);


--------------------------------------------------------------------------------
-- Chêne du domaine de la Chapelle, La Chapelle-Montlinard, Cher
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'83a1d7b7-d206-4631-b7de-f447de8c9778',
	'Chêne du domaine de la Chapelle',
	'',
	'tree1',
	'tree',
	47.169197, 2.986949, 1, 
	'Domaine de la Chapelle', 'La Chapelle-Montlinard', 'Cher', 'France',
	'',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2011/03/11/chenes-du-domaine-de-la-chapelle-la-chapelle-montlinard-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'83a1d7b7-d206-4631-b7de-f447de8c9778',
	'Quercus', 'Chêne',
	NULL, 9.60, 600, NULL
);


--------------------------------------------------------------------------------
-- Gros chêne de Veslon, Barlieu, Cher
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'71d8e14e-6271-48df-9499-95236314aea7',
	'Gros chêne de Veslon',
	'',
	'tree1',
	'tree',
	47.481647, 2.624441, 0.1,
	'Veslon', 'Barlieu', 'Cher', 'France',
	'Sur la D8 en direction de Barlieu (depuis Vailly-sur-Sauldre), prendre de chemin (Badineau) à gauche le long des sillos à grain sur quelques centaines de mètre. Le chêne est sur la gauche bien dégagé dans un champ. Deux chênes secondaires un peu plus loin, aussi sur la gauche.',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2010/01/04/enorme-chene-campagnard-veslon-barlieu-cher/',
	NULL, --'418fd0f6-50a7-45f5-97ca-41e707a33266',
	true,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'71d8e14e-6271-48df-9499-95236314aea7',
	'Quercus', 'Chêne',
	20, 6.80, 300, 400
);


--------------------------------------------------------------------------------
-- Châtaigniers, la Beurthe, Savigny-en-Sancerre, Cher
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'954c1773-52ec-4cc1-97ee-9c541c47a4a1',
	'Châtaigniers de la Beurthe',
	'',
	'tree1',
	'tree',
	47.451033, 2.763753, 0.5,
	'Mont à la Beurthe', 'Savigny-en-Sancerre', 'Cher', 'France',
	'',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2009/01/08/quelques-pistes-a-explorer/',
	NULL, --'8be9a3af-3554-4c05-a456-fa60e977c7be',
	true,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'954c1773-52ec-4cc1-97ee-9c541c47a4a1',
	'Castanea Sativa', 'Châtaignier',
	NULL, 7, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne, Cours, Savigny-en-Sancerre, Cher
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'106cdb48-0907-4698-8c21-3e8700500fca',
	'Chêne de Cours',
	'',
	'tree1',
	'tree',
	47.439710, 2.828249, 0.1,
	'Cours', 'Savigny-en-Sancerre', 'Cher', 'France',
	'Sortie de Savigny en direction de Boulleret, sur le côté droit de la route en bordure de champ dans le hammeau de Cours.',
	'', '',
	NULL, --'584d70a4-9cdf-4411-a8b9-c2f6c2bf0f47',
	true,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'106cdb48-0907-4698-8c21-3e8700500fca',
	'Quercus', 'Chêne',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Sequoia, Savigny-en-Sancerre
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'c90ae353-a249-4979-bc1b-e451e3fe5af0',
	'Sequoia du cimetière',
	'',
	'tree2',
	'tree',
	47.440778, 2.807256, 0.1,
	'', 'Savigny-en-Sancerre', 'Cher', 'France',
	'Devant le cimetière de Savigny-en-Sancerre',
	'', '',
	NULL, --'e1573274-5031-48c4-ac5d-66e741455eb4',
	true,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'c90ae353-a249-4979-bc1b-e451e3fe5af0',
	'Sequoiadendron Giganteum', 'Séquoia géant',
	NULL, 6.45, NULL, NULL
);


--------------------------------------------------------------------------------
-- Sequoia, Savigny-en-Sancerre
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'ce6e45ee-bfa3-422f-b5d5-c5f7364b6244',
	'Chêne de Buranlure',
	'',
	'tree1',
	'tree',
	47.409442, 2.885504, 0.1,
	'Buranlure, Domaine d''en-haut', 'Boulleret', 'Cher', 'France',
	'Sur la D55, à la sortie de Cosne, à l''entrée du château de Buranlure',
	'', '',
	NULL, --'8eccd99d-f014-40fb-9374-a9d272e7dfb6',
	true,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'ce6e45ee-bfa3-422f-b5d5-c5f7364b6244',
	'Quercus', 'Chêne',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne Saint Fiacre
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'ae08980d-20b6-4cf4-afaa-4f3746d8483e',
	'Chêne Saint Fiacre',
	'',
	'tree1',
	'tree',
	46.982434, 3.195675, 1, 
	'', 'Nevers', 'Cher', 'France',
	'Le Chêne St Fiacre se trouve en bordure du bocage et des jardins de la rue Pissevache sur le Val de la Baratte.',
	'Association A.R.B.R.E.S.', '',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'ae08980d-20b6-4cf4-afaa-4f3746d8483e',
	'Quercus', 'Chêne',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Platane de Coulanges-les-Nevers
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'74f798ff-3cfd-4482-a73f-a3c97c74b45a',
	'Platane de Coulanges-les-Nevers',
	'',
	'tree1',
	'tree',
	47.014401, 3.199968, 1, 
	'Jardins de Forgeneuve', 'Nevers', 'Cher', 'France',
	'',
	'Association A.R.B.R.E.S.', '',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'74f798ff-3cfd-4482-a73f-a3c97c74b45a',
	'Platanus', 'Platane',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne de grand'maison, Sainte-Montaine
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'e59706d5-426a-4f88-b0c9-fbbd3242df43',
	'Chêne de grand''maison',
	'',
	'tree1',
	'tree',
	47.490521, 2.320139, 1, 
	'', 'Sainte-Montaine', 'Cher', 'France',
	'',
	'', '',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'e59706d5-426a-4f88-b0c9-fbbd3242df43',
	'Quercus', 'Chêne',
	NULL, 9, 400, NULL
);


--------------------------------------------------------------------------------
-- Chêne Saint-Etienne
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'aa749361-dbac-4e85-8b34-c4409b3c2223',
	'Chêne Saint-Etienne',
	'',
	'tree1',
	'tree',
	47.314595, 2.433673, 1, 
	'Forêt de St Palais, ', 'Méry-ès-Bois', 'Cher', 'France',
	'Le chêne Saint-Étienne figure aussi bien sur les cartes Michelin et IGN.',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2009/08/29/chene-saint-etienne-foret-de-st-palais-mery-es-bois-cher/',
	NULL,
	false,
	'/trees/images/trees/FRA - 18 - Chêne Saint-Etienne/chene-saint-etienne-1.jpg', '/trees/images/trees/FRA - 18 - Chêne Saint-Etienne/chene-saint-etienne-31.jpg', NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'aa749361-dbac-4e85-8b34-c4409b3c2223',
	'Quercus', 'Chêne',
	NULL, 4, NULL, NULL
);


--------------------------------------------------------------------------------
-- Tilleul du Noyer
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'ac847657-a051-4ffb-9d60-483d70f83865',
	'Tilleul du Noyer',
	'',
	'tree1',
	'tree',
	47.385077, 2.683597, 0.5, 
	'', 'Le Noyer', 'Cher', 'France',
	'',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2010/03/08/un-tilleul-imposant-le-noyer-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'ac847657-a051-4ffb-9d60-483d70f83865',
	'Tilia', 'Tilleul',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Saule de Beffes
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'4cda43de-15eb-497a-8ed9-d23d647139f1',
	'Saule de Beffes',
	'',
	'tree1',
	'tree',
	47.088339, 3.004910, 0.5, 
	'', 'Beffes', 'Cher', 'France',
	'',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2011/01/16/saule-remarquable-de-beffes-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'4cda43de-15eb-497a-8ed9-d23d647139f1',
	'Salix', 'Saule',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Peuplier d’Italie de Doys
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'7f72f0d8-2bce-4e68-8e54-d639cd958364',
	'Peuplier d’Italie de Doys',
	'',
	'tree1',
	'tree',
	47.078884, 2.888852, 0.5, 
	'', 'Garigny', 'Cher', 'France',
	'Il pousse en face du château de Doys et de son petit bois qui renferme d’autres trésors…',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2015/01/04/peuplier-doys-garigny-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'7f72f0d8-2bce-4e68-8e54-d639cd958364',
	'Populus Nigra', 'Peuplier d''Italie',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne de la Crolay, Menetou-Couture
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'52b38c97-d3cd-4589-956e-7b614280884e',
	'Chêne de la Crolay',
	'',
	'tree1',
	'tree',
	47.046562, 2.930114, 0.5, 
	'La Crolay', 'Menetou-Couture', 'Cher', 'France',
	'Ce chêne balise l’entrée d’une ferme qui tombe peu à peu en ruine.',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2014/07/10/chene-crolay-menetou-couture-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'52b38c97-d3cd-4589-956e-7b614280884e',
	'Quercus', 'Chêne',
	NULL, 5.80, 250, 300
);


--------------------------------------------------------------------------------
-- Saule de Bouy, Chassy
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'2d6ab96c-7481-467f-b6f1-44bd0e1a432a',
	'Saule de Bouy',
	'Ce saule est camouflé dans un bocage reculé derrière le village de Dejointes mais il vaut le détour.',
	'tree1',
	'tree',
	47.026798, 2.873799, 0.5, 
	'Bouy', 'Chassy', 'Cher', 'France',
	'',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2014/05/06/saule-de-bouy-chassy-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'2d6ab96c-7481-467f-b6f1-44bd0e1a432a',
	'Salix', 'Saule',
	NULL, 5.8, NULL, NULL
);


--------------------------------------------------------------------------------
-- Saule de Nérondes
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'a30813a8-cb44-490b-89be-8b05825d94eb',
	'Saule de Nérondes',
	'',
	'tree1',
	'tree',
	47.029672, 2.853875, 0.5, 
	'', 'Nérondes', 'Cher', 'France',
	'',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2012/12/28/saule-de-dejointes-nerondes-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'a30813a8-cb44-490b-89be-8b05825d94eb',
	'Salix', 'Saule',
	NULL, 5.07, NULL, NULL
);


--------------------------------------------------------------------------------
-- Cèdre du Liban de Sancerre
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'455ee9fb-8b0d-4e4e-bc93-5470a16db6d4',
	'Cèdre du Liban de Sancerre',
	'',
	'tree2',
	'tree',
	47.333668, 2.841928, 0.5, 
	'', 'Sancerre', 'Cher', 'France',
	'',
	'', '',
	NULL, --'a177cb4a-346a-460c-bca2-69fc85832757',
	true,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'455ee9fb-8b0d-4e4e-bc93-5470a16db6d4',
	'Cedrus libani', 'Cèdre du Liban',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Charmes de Quantilly
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'c6fd1411-99af-4430-8ba6-3f120da0e0e6',
	'Charmes de Quantilly',
	'',
	'tree1',
	'tree',
	47.219635, 2.457167, 0.5, 
	'', 'Quantilly', 'Cher', 'France',
	'',
	'Krapo arboricole', 'https://krapooarboricole.wordpress.com/2010/01/24/charmes-remarquables-quantilly-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'c6fd1411-99af-4430-8ba6-3f120da0e0e6',
	'Carpinus', 'Charme',
	NULL, 3.9, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne de la Garde, Sancoins
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'ce689f4e-6de0-4583-b2d4-88abfc1cd9b5',
	'Chêne de la Garde',
	'',
	'tree1',
	'tree',
	46.832182, 2.949306, 0.5, 
	'', 'Sancoins', 'Cher', 'France',
	'',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2014/04/30/chene-de-la-garde-sancoins-cher/',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'ce689f4e-6de0-4583-b2d4-88abfc1cd9b5',
	'Quercus', 'Chêne',
	NULL, 5.30, NULL, NULL
);


--------------------------------------------------------------------------------
-- Cèdre du Liban de Saint Satur
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'39576bf4-84f2-4506-9e2e-627e0edf3b32',
	'Cèdre (?) à Saint-Satur',
	'',
	'tree2',
	'tree',
	47.340446, 2.855928, 0.5, 
	'', 'Saint-Satur', 'Cher', 'France',
	'Au niveau du 15, rue Paul Cannier',
	'', '',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'39576bf4-84f2-4506-9e2e-627e0edf3b32',
	'Cedrus libani', 'Cèdre du Liban',
	NULL, NULL, NULL, NULL
);

--------------------------------------------------------------------------------
-- Thuya - Nogent-sur-Vernisson (45)
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'971bc352-7147-4d15-8af7-f407c4980587',
	'Thuya de Nogent-sur-Vernisson',
	'Thuya aux 80 troncs, collection Bizarretum, le thuya géant de l''Arboretum National des Barres à Nogent-sur-Vernisson, a reçu le label Arbre Remarquable de France en septembre 2013.',
	'tree2',
	'tree',
	47.836502, 2.761113, 0.5, 
	'Arboretum National des Barres', 'Nogent-sur-Vernisson', 'Loiret', 'France',
	'',
	'Association A.R.B.R.E.S.', '',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'971bc352-7147-4d15-8af7-f407c4980587',
	'Thuja', 'Thuya',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Tilleul - Amilly (45)
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'c2211650-9374-4655-812b-51cc75760c42',
	'Tilleul d''Amilly',
	'Le tilleul d''Amilly, a reçu le label Arbre Remarquable de France en novembre 2003. Le château de La Ferté datant du xviiie siècle est un ancien pavillon de chasse, sur les bords du canal de Briare, avec un parc de l’école d’Hubert Robert, et un tilleul de sept mètres de circonférence, classé parmi les « arbres remarquables de France »',
	'tree1',
	'tree',
	47.958081, 2.775124, 0.5, 
	'Câteau de La Ferté', 'Amilly', 'Loiret', 'France',
	'',
	'Association A.R.B.R.E.S.', '',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'c2211650-9374-4655-812b-51cc75760c42',
	'Tilia', 'Tilleul',
	NULL, 7.00, 400, NULL
);


--------------------------------------------------------------------------------
-- Tulipier - Chateauneuf-sur-Loire (45)
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'e3e84569-e23e-4a81-96d1-42394ae72540',
	'Tulipier de Chateauneuf-sur-Loire',
	'Le tulipier de Virginie de Chateauneuf-sur-Loire, a reçu le label Arbre Remarquable de France en juin 2009.',
	'tree1',
	'tree',
	47.862212, 2.207148, 0.5, 
	'Parc départemental de Châteauneuf-sur-Loire', 'Chateauneuf-sur-Loire', 'Loiret', 'France',
	'',
	'Association A.R.B.R.E.S.', 'http://cdt45.media.tourinsoft.eu/Upload/depliant-parc-chateauneuf.pdf',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'e3e84569-e23e-4a81-96d1-42394ae72540',
	'Liriodendron tulipifera', 'Tulipier de Virginie',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Sophora - Chateauneuf-sur-Loire (45)
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'4eaab8a1-e58b-428b-a92c-636d2af90535',
	'Sophora de Chateauneuf-sur-Loire',
	'Le sophora du Japon de Chateauneuf-sur-Loire, a reçu le label Arbre Remarquable de France en juin 2009.',
	'tree1',
	'tree',
	47.864159, 2.216756, 0.5, 
	'Parc départemental de Châteauneuf-sur-Loire', 'Chateauneuf-sur-Loire', 'Loiret', 'France',
	'',
	'Association A.R.B.R.E.S.', 'http://cdt45.media.tourinsoft.eu/Upload/depliant-parc-chateauneuf.pdf',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'4eaab8a1-e58b-428b-a92c-636d2af90535',
	'Styphnolobium japonicum', 'Sophora du Japon',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne Paris d'Ouzouer sur Loire
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'c4cb7855-6c80-46d3-ba7c-61531df3e55c',
	'Chêne Paris d''Ouzouer sur Loire',
	'',
	'tree1',
	'tree',
	47.800223, 2.456610, 0.5, 
	'Le Mesnil', 'Ouzouer sur Loire', 'Loiret', 'France',
	'A l’Observatoire du ravoir, au chêne Paris, au lieu dit "Le Mesnil", vers la statuette Sainte Radegonde,...',
	'Krapo arboricole', 'http://www.visugpx.com/TuvusOIwbL',
	NULL,
	false,
	'/trees/images/trees/FRA - 51 - Chêne Paris/chene.jpg', NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'c4cb7855-6c80-46d3-ba7c-61531df3e55c',
	'Quercus', 'Chêne',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Cèdre du Couasnon, Olivet
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'd5cfd4d6-9d55-471d-b91c-779b3c032b8f',
	'Cèdre du Couasnon',
	'',
	'tree2',
	'tree',
	47.863100, 1.899746, 0.5, 
	'La Chapelle de Couasnon', 'Olivet', 'Loiret', 'France',
	'',
	'Wikipedia', 'http://chapelledecouasnon.free.fr',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'd5cfd4d6-9d55-471d-b91c-779b3c032b8f',
	'Cedrus', 'Cèdre',
	NULL, NULL, NULL, NULL
);


--------------------------------------------------------------------------------
-- Chêne des Pitons
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'77d8a16c-24ae-4847-8d63-7479f21306ad',
	'Chêne des Pitons',
	'Certainement l''un des plus âgés, voire le plus âgé des chênes du Loiret. 400 ans d''âge ! Il serait né sous Henri IV.  Le Chêne des Pitons servira d''illustration à l''un des "coupons" - ou billets - du " méreau du Gâtinais ", la monnaie locale de la partie Loiret du Gâtinais qui devrait être lancée par l''association Equilibre Monnaie - Terre au plus tard au début de l''été 2016.',
	'tree1',
	'tree',
	48.035532, 2.855526, 0.5, 
	'Lieu-dit Les Pitons', 'Louzouer', 'Loiret', 'France',
	'Aucun paneau ne signale sa présence. Situé au carrefour de la route qui, de la Chapelle-Saint-Sepulcre, mène au Menhir de la chaise et à la départementale 115 et de la route qui permet d''accéder au hameau des Brins à partir de Louzouer. Au pied de la ferme des Pitons',
	'Wikipedia', 'http://ricjasforetmontargis.wifeo.com/louzouer-le-chene-des-pitons-le-chene-le-plus-age-du-loiret.php',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'77d8a16c-24ae-4847-8d63-7479f21306ad',
	'Quercus', 'Chêne',
	30, 5.40, 400, NULL
);


--------------------------------------------------------------------------------
-- Le Chêne Gaulé, Forêt de Montargis
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'cab4453a-1f35-47f6-9589-6885c7d96427',
	'Chêne Gaulé',
	'Le plus beau chêne de la Forêt de Montargis. Le symbole du village de Paucourt. Le Chêne Gaulé doit son nom au droit de panage qui remonte au Moyen Age : le porcher, durant la "glandée", a le droit de donner 3 coups d''une gaule de 13 pieds - 4 mètres - à chaque chêne, celà pour améliorer la qualité et surtout la quantité de glands récoltés et consommés sur place par les porcs',
	'tree1',
	'tree',
	48.044068, 2.793287, 1, 
	'Route du chêne gaulé', 'Paucourt', 'Loiret', 'France',
	'A proximité du stade',
	'', 'http://ricjasforetmontargis.wifeo.com/paucourt-et-la-foret-de-montargis.php',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'cab4453a-1f35-47f6-9589-6885c7d96427',
	'Quercus', 'Chêne',
	22, 1.3, 250, NULL
);


--------------------------------------------------------------------------------
-- Le Hêtre à deux jambes
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'fdbc5ecc-b5f6-469b-b2e9-60580005197e',
	'Le Hêtre à deux jambes',
	'Le Hêtre à deux jambes avec le Chêne à deux jambes et le chêne siamois, une des curiosités naturelles les plus intéressantes et les plus originales de la forêt de Montargis.',
	'tree1',
	'tree',
	48.040035, 2.814995, 0.5, 
	'Forêt de Montargis', 'Paucourt', 'Loiret', 'France',
	'Situé à moins de 400m de la Pierre du Gros Vilain sur la commune de Paucourt, dans la parcelle 79, presque au bord du chemin forestier qui sépare cette parcelle de la parcelle 78. Ce chemin, parallèle à la Montagneuse, domine la Grande vallée Sèche. de la Pierre du Gros Vilain, il croise l''ancienne route de la Pierre, passe devant notre hêtre, rejoint la route forestière du chêne Gaulé et continue en direction de la route forestière de la Hutte.',
	'', 'http://ricjasforetmontargis.wifeo.com/le-hetre-a-2-jambes-arbre-remarquable-en-foret-de-montargis.php',
	NULL,
	false,
	NULL, NULL, NULL, NULL, NULL
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'fdbc5ecc-b5f6-469b-b2e9-60580005197e',
	'Fagus sylvatica', 'Hêtre',
	NULL, NULL, NULL, NULL
);





--------------------------------------------------------------------------------
-- Le Châtaignier de la centrale
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'c115c05c-76c2-41d6-9b3c-5e8813425e09',
	'Le Châtaignier de la centrale',
	'Uun des plus gros châtaigniers de son département',
	'tree1',
	'tree',
	47.738682, 2.506130, 1, 
	'', 'Dampierre-en-Burly', 'Loiret', 'France',
	'Dans un champ, sous les pylônes qui soupèsent des câbles sortant directement de la centrale nucléaire de Dampierre-en-Burly.',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2014/04/16/chataignier-de-la-centrale-de-dampierre-en-burly-loiret/',
	NULL,
	false,
	'/trees/images/trees/FRA - 51 - Châtaignier de la centrale de Dampierre en Burly/Chataignier-Dampierre-2.jpg', '/trees/images/trees/FRA - 51 - Châtaignier de la centrale de Dampierre en Burly/Chataignier-Dampierre-1.jpg', '/trees/images/trees/FRA - 51 - Châtaignier de la centrale de Dampierre en Burly/Chataignier-Dampierre-3.jpg', '/trees/images/trees/FRA - 51 - Châtaignier de la centrale de Dampierre en Burly/Chataignier-Dampierre-4.jpg', '/trees/images/trees/FRA - 51 - Châtaignier de la centrale de Dampierre en Burly/Chataignier-Dampierre-5.jpg'
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'c115c05c-76c2-41d6-9b3c-5e8813425e09',
	'Castanea Sativa', 'Châtaignier',
	NULL, 7.85, NULL, NULL
);



--------------------------------------------------------------------------------
-- Le châtaignier de Digons à Pébrac, Haute-Loire
--------------------------------------------------------------------------------

INSERT INTO treeregister_poi (
	id, name, description, icon, type,
	latitude, longitude, accuracy,
	location, city, county, country,
	directions,
	source, sourceURL,
	coverId,
	visited,
	picture01, picture02, picture03, picture04, picture05
)
VALUES (
	'42e8b7db-7150-4888-bc97-6c4b0c8cc3fb',
	'Le châtaignier de Digons',
	'L’imposant châtaignier de Digons est le témoin d’un passé où la châtaigne jouait un rôle majeur dans la vie paysanne du Massif Central. Avec deux autres compagnons plus jeunes, ils sont les derniers survivants d’un ancien verger de châtaigniers. Sa position isolée et dominante à la lisière de la forêt lui confère le statut respectable de sentinelle du temps pour les habitants du hameau. Malgré sa labellisation comme Arbre remarquable de France en 2012 par l’Association ARBRES, le châtaignier de Digons reste très discret et peu connu même localement. Mais finalement, c’est peut-être aussi un bon moyen de vivre paisiblement…',
	'tree1',
	'tree',
	45.050012, 3.532326, 0.2, 
	'', 'Pébrac', 'Haute-Loire', 'France',
	'',
	'Les tétards arboricoles', 'http://lestetardsarboricoles.fr/wordpress/2016/10/07/le-chataignier-de-digons-a-pebrac-haute-loire/',
	NULL,
	false,
	'/trees/images/trees/FRA - 43 - Le châtaignier de Digons/Chataignier-digons-pebrac2.jpg', '/trees/images/trees/FRA - 43 - Le châtaignier de Digons/Chataignier-digons-pebrac4-683x1024.jpg', '/trees/images/trees/FRA - 43 - Le châtaignier de Digons/Chataignier-digons-pebrac5-683x1024.jpg', '/trees/images/trees/FRA - 43 - Le châtaignier de Digons/Chataignier-digons-pebrac7.jpg', '/trees/images/trees/FRA - 43 - Le châtaignier de Digons/Chataignier-digons-pebrac8.jpg'
);
INSERT INTO treeregister_poi_tree (
	poiId,
	speciesLatin, speciesVernacular,
	height, girth, ageMin, ageMax
)
VALUES (
	'42e8b7db-7150-4888-bc97-6c4b0c8cc3fb',
	'Castanea Sativa', 'Châtaignier',
	16, 9.05, 400, NULL
);
