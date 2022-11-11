
-- get crops flat attributes by zone
SELECT data_keys."label" as "key", crop_data."value" as "value" FROM crop_data
JOIN crops on crop_data.crop_id = crops.id
JOIN data_keys on crop_data.data_key_id = data_keys.id
WHERE crops."label" = 'Buckwheat' and crops."zone" = 7;

-- get crops winter survivals by zone
SELECT zone_inclusion.label FROM crops
JOIN crops_zone_inclusion on crops_zone_inclusion.crop_id = crops.id
JOIN zone_inclusion on zone_inclusion.id = crops_zone_inclusion.zone_inclusion_id
WHERE crops."label" = 'Buckwheat' AND crops."zone" = 7;

-- get crops soil drainages by zone
SELECT soil_drainage.label FROM crops
JOIN crops_soil_drainage on crops_soil_drainage.crop_id = crops.id
JOIN soil_drainage on soil_drainage.id = crops_soil_drainage.soil_drainage_id
WHERE crops."label" = 'Buckwheat' AND crops."zone" = 7;


SELECT * FROM crops WHERE label = 'Alfalfa, Dormant';

-- gets crop name, data key, and value where a crops data key has the same value across all zones.
CREATE VIEW  crop_data_with_matching_values_across_zone AS 
SELECT 
	crops."label" as crop,
	data_keys."label" as data_key,
	crop_data."value" as "value" 
FROM crops
JOIN crop_data on crop_data.crop_id = crops.id
JOIN data_keys on data_keys.id = crop_data.data_key_id
GROUP BY crop_data."value", crops."label", data_keys."label"
HAVING count(crop_data."value") = (SELECT count(id) FROM crops _crops WHERE _crops."label" = crops."label")
ORDER BY crops."label", data_keys."label";

-- gets crop name, data key, and value where a crops data key has the same value across all zones.
--CREATE VIEW  crop_data_without_matching_values_across_zone AS 
SELECT 
	crops."label" as crop,
	data_keys."label" as data_key,
	crop_data."value" as "value",
	count(crop_data."value") as count, 
	(SELECT count(id) FROM crops _crops WHERE _crops."label" = crops."label") as active_zones_count
FROM crops
JOIN crop_data on crop_data.crop_id = crops.id
JOIN data_keys on data_keys.id = crop_data.data_key_id
WHERE data_keys."label" = 'Can Aerial Seed'
GROUP BY crop_data."value", crops."label", data_keys."label"
HAVING count(crop_data."value") != (SELECT count(id) FROM crops _crops WHERE _crops."label" = crops."label")
ORDER BY crops."label", data_keys."label";

SELECT count(id) FROM crops _crops WHERE _crops."label" = 'Barley, Winter';


-- 
CREATE VIEW zone_inclusion_variances_across_zone AS
SELECT 
	crops."label" as crop,
	zone_inclusion."label" as zone_inclusion,
	count(zone_inclusion."label") as count_across_zones,
	(SELECT count(id) FROM crops _crops WHERE _crops."label" = crops."label") as active_zones_count
FROM crops
JOIN crops_zone_inclusion on crops_zone_inclusion.crop_id = crops.id
JOIN zone_inclusion on crops_zone_inclusion.zone_inclusion_id = zone_inclusion.id
GROUP BY crops."label", zone_inclusion."label"
HAVING count(zone_inclusion."label") != (SELECT count(id) FROM crops _crops WHERE _crops."label" = crops."label")
ORDER BY crops."label", zone_inclusion."label", count(zone_inclusion."label");



select * from data_keys where label = 'Residue Suppresses Summer Annual Weeds';


select * from crop_data_without_matching_values_across_zone where data_key = 'Can Aerial Seed';

SELECT
	*
FROM crops
JOIN crop_data on crops.id = crop_data.crop_id
JOIN data_keys on data_keys.id = crop_data.data_key_id
WHERE crops."label" = 'Barley, Winter'
AND (data_keys."label" = 'Can Aerial Seed?' OR data_keys."label" = 'Can Aerial Seed');

UPDATE crop_data SET data_key_id = (SELECT id FROM data_keys WHERE data_keys."label" = 'Can Aerial Seed')
WHERE data_key_id = (SELECT id FROM data_keys WHERE data_keys."label" = 'Can Aerial Seed?');

SELECT * FROM data_keys where label ilike 'can%';

delete from data_keys where label = 'Can Aerial Seed?';



SELECT 
	distinct crop_data."value" as value
FROM crops
JOIN crop_data on crop_data.crop_id = crops.id
JOIN data_keys on data_keys.id = crop_data.data_key_id
WHERE data_keys."label" = 'Zone Decision';


CREATE VIEW crop_data_detailed AS
SELECT 
			crops."label" 		as crop,
			crops."zone"		as zone,
			data_keys."label" 	as data_key,
			crop_data."value"	as value,
			crops.id 			as crop_id,
			data_keys.id		as data_key_id,
			crop_data.id		as crop_data_id
FROM crops
JOIN crop_data on crop_data.crop_id = crops.id
JOIN data_keys on data_keys.id = crop_data.data_key_id;


SELECT * FROM crop_data_detailed WHERE data_key ilike '%description%' and crop = 'Alfalfa, Dormant';


select * from crop_data_detailed order by crop, zone, data_key;

select * from crop_data_detailed where data_key ilike '%shade%' order by crop;

select distinct value from crop_data_detailed where data_key ilike '%scientific%';





SELECT 
	crops."label" as cover_crop,
	crops."zone" as zone,
	data_keys."label" as data_key,
	crop_data."value" as value
FROM crops
JOIN crop_data on crops.id = crop_data.crop_id
JOIN data_keys on crop_data.data_key_id = data_keys.id
WHERE crops."label" = 'Clover, Red' and crops.zone = 5
order by crops.zone;



SELECT 
	crops."label" as crop,
	crops."zone" as zone,
	soil_drainage."label" as soil_drainage
FROM crops
JOIN crops_soil_drainage on crops_soil_drainage.crop_id = crops.id
JOIN soil_drainage on soil_drainage.id = crops_soil_drainage.soil_drainage_id
ORDER BY crops."label", crops."zone";

SELECT 
	crops."label" as crop,
	crops."zone" as zone,
	active_growth_period."label" as soil_drainage
FROM crops
JOIN crops_active_growth_period on crops_active_growth_period.crop_id = crops.id
JOIN active_growth_period on active_growth_period.id = crops_active_growth_period.active_growth_period_id
ORDER BY crops."label", crops."zone";

SELECT 
	crops."label" as crop,
	crops."zone" as zone,
	root_architecture."label" as root_architecture
FROM crops
JOIN crops_root_architecture on crops_root_architecture.crop_id = crops.id
JOIN root_architecture on root_architecture.id = crops_root_architecture.root_architecture_id
ORDER BY crops."label", crops."zone";



SELECT
	crop_data_detailed.crop as crop,
	crop_data_detailed."zone" as zone,
	crop_data_detailed.data_key as data_key,
	crop_data_detailed."value" as value,
	root_architecture."label" as root_architecture
FROM crop_data_detailed 
JOIN crops_root_architecture on crops_root_architecture.crop_id = crop_data_detailed.crop_id
JOIN root_architecture on root_architecture.id = crops_root_architecture.root_architecture_id
WHERE data_key ilike '%root%depth%'
ORDER BY crop_data_detailed.crop, crop_data_detailed.zone;



CREATE SCHEMA option_2;
