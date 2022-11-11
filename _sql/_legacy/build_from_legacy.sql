-- ############################################################
-- CREATE TABLES
-- ############################################################

CREATE TABLE regions (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL

);


CREATE TABLE crops (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL
);


CREATE TABLE categories (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL
);


CREATE TABLE zones (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL,
	region_id		INT NOT NULL,
	
	
	CONSTRAINT fk_zones_region_id FOREIGN KEY(region_id)
		REFERENCES regions(id)

);
DROP TABLE crops_zones CASCADE;
CREATE TABLE crops_zones (
	id				SERIAL PRIMARY KEY,
	zone_id			INT NOT NULL,
	crop_id			INT NOT NULL,
	
	
	CONSTRAINT fk_crops_zones_zone_id FOREIGN KEY(zone_id)
		REFERENCES zones(id),
		
	CONSTRAINT fk_crops_zones_crop_id FOREIGN KEY(crop_id)
		REFERENCES crops(id)	
);

CREATE TABLE attributes (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL,
	category_id		INT NOT NULL,
	is_array		BOOLEAN NOT NULL DEFAULT false,
	is_strict		BOOLEAN NOT NULL DEFAULT false,
	

	CONSTRAINT fk_attributes_category_id FOREIGN KEY(category_id)
		REFERENCES categories(id)
);

CREATE TYPE attribute_value_data_type AS ENUM (
	'number',
	'string',
	'datetime'
);

CREATE TABLE attribute_values (
	id				SERIAL PRIMARY KEY,
	value			TEXT NOT NULL,
	data_type		attribute_value_data_type NOT NULL,
	attribute_id	INT NOT NULL,
	
	
	CONSTRAINT fk_attribute_values_attribute_id FOREIGN KEY(attribute_id)
		REFERENCES attributes(id)
);



CREATE TABLE crops_zones_attributes (
	id				SERIAL PRIMARY KEY,
	crops_zone_id	INT NOT NULL,
	attribute_value_id	INT NOT NULL,
	
	
	CONSTRAINT fk_crops_zones_attributes_crops_zone_id FOREIGN KEY(crops_zone_id)
		REFERENCES crops_zones(id),
	
	CONSTRAINT fk_crops_zones_attributes_attribute_value_id FOREIGN KEY(attribute_value_id)
		REFERENCES attribute_values(id)
);

-- ############################################################
-- FUNCTIONS
-- ############################################################

create or replace function is_datetime(val text)
   returns boolean 
   language plpgsql
  as
$$
declare
	stamp TIMESTAMP;
-- variable declaration
begin
	stamp = val::TIMESTAMP;
	return true;
	
	EXCEPTION WHEN others THEN
	return false;
 -- logic
end;
$$;

create or replace function is_integer(val text)
   returns boolean 
   language plpgsql
  as
$$
declare
	num INT;
-- variable declaration
begin
	num = val::INT;
	return true;
	
	EXCEPTION WHEN others THEN
	return false;
 -- logic
end;
$$;

create or replace function is_float(val text)
   returns boolean 
   language plpgsql
  as
$$
declare
	num FLOAT;
-- variable declaration
begin
	num = val::FLOAT;
	return true;
	
	EXCEPTION WHEN others THEN
	return false;
 -- logic
end;
$$;


-- ############################################################
-- DATA SEEDS
-- ############################################################

-- regions
INSERT INTO regions (label) VALUES ('Northeast');


-- zones
INSERT INTO zones (label, region_id)
SELECT
	distinct zone,
	(select id from regions where label = 'Northeast') as region_id
FROM crops;


-- crops
INSERT INTO  crops (label)
SELECT
	distinct label
FROM legacy.crops order by label;

-- categories
INSERT INTO categories (label) VALUES
('Taxonomy & Listing'),
('References & Resources'),
('Environmental Tolerances'),
('Disease & Non-Weed Pests'),
('Planting Dates'),
('Growth'),
('Planting'),
('Termination'),
('Soil Conditions'),
('Weeds'),
('Basic Agronomics'),
('Goals'),
('Notes')
;

-- temp value
INSERT INTO categories (label) VALUES
('Uncategorized')
;

-- attributes
INSERT INTO attributes (label, category_id)
SELECT
 distinct data_key,
 (select id from categories where label = 'Uncategorized') as category_id
FROM
legacy.crop_data_detailed crop_data_detailed
order by data_key;

-- array attributes
INSERT INTO attributes (label, category_id) VALUES
('Active Growth Period', (SELECT id FROM categories WHERE label = 'Basic Agronomics'), true),
('Duration', (SELECT id FROM categories WHERE label = 'Basic Agronomics'), true),
('Flowering Trigger', (SELECT id FROM categories WHERE label = 'Growth'), true),
('Inoculant Type', (SELECT id FROM categories WHERE label = 'Growth'), true),
('Root Architecture', (SELECT id FROM categories WHERE label = 'Growth'), true),
('Soil Drainage', (SELECT id FROM categories WHERE label = 'Soil Conditions'), true),
('Soil Texture', (SELECT id FROM categories WHERE label = 'Soil Conditions'), true),
('Winter Survival', (SELECT id FROM categories WHERE label = 'Environmental Tolerances'), true)
;

-- attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT 
	atts.id as attribute_id,
	value,
	CASE
		WHEN is_float(value) THEN 'number'::attribute_value_data_type
		WHEN is_datetime(value) THEN 'datetime'::attribute_value_data_type
		ELSE 'string'::attribute_value_data_type END as data_type
FROM legacy.crop_data_detailed crop_data_detailed
JOIN attributes atts on atts."label" = data_key 
GROUP BY atts.id, value
ORDER BY atts.id, value;

-- crops zones
INSERT INTO crops_zones (crop_id, zone_id)
SELECT
	scrops.id as crop_id,
	zones.id as zone_id
FROM legacy.crops crops
JOIN crops scrops on scrops."label" = crops."label"
JOIN zones zones on zones."label" = crops.zone::TEXT 
ORDER BY crops.label;


-- CROPS ZONE ATTRIBUTE VALUES
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		_zones.id as _zone_id,
		_crops.id as _crop_id,
		_atts.id as _attribute_id,
		_crop_data.*
	FROM legacy.crop_data_detailed _crop_data
	JOIN crops _crops on _crops.label = _crop_data.crop
	JOIN zones _zones on _zones."label" = _crop_data.zone::TEXT
	JOIN "attributes" _atts on _atts."label" = _crop_data.data_key 
	ORDER BY _crop_data.crop
) crop_data
JOIN crops_zones crops_zones on crop_data._zone_id = crops_zones.zone_id and crop_data._crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data._attribute_id and _att_vals."value" = crop_data."value" 
;

-- soil drainage attribute value
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Soil Drainage') as attribute_id, 
	_soil_drainages.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.soil_drainage _soil_drainages;

-- soil drainage crops zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Soil Drainage') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_s_labels."label" as label
	FROM legacy.crops_soil_drainage _soil_drainages
	JOIN legacy.crops _crops on _crops.id = _soil_drainages.crop_id
	JOIN legacy.soil_drainage _s_labels on _s_labels.id = _soil_drainages.soil_drainage_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;

-- active growth period attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Active Growth Period') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.active_growth_period _labels;

-- active growth period zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Active Growth Period') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_active_growth_period _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.active_growth_period _labels on _labels.id = _crops_atts.active_growth_period_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;

-- duration attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Flowering Trigger') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.duration _labels;

-- duration zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Flowering Trigger') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_duration _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.duration _labels on _labels.id = _crops_atts.duration_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;

-- flowering_trigger attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Flowering Trigger') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.flowering_trigger _labels;

-- flowering_trigger zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Flowering Trigger') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_flowering_trigger _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.flowering_trigger _labels on _labels.id = _crops_atts.flowering_trigger_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;


-- Inoculant Type attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Inoculant Type') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.inoculant_type _labels;

-- Inoculant Type zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Inoculant Type') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_inoculant_type _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.inoculant_type _labels on _labels.id = _crops_atts.inoculant_type_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;

-- Root Architecture attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Root Architecture') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.root_architecture _labels;

-- Root Architecture zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Root Architecture') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_root_architecture _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.root_architecture _labels on _labels.id = _crops_atts.root_architecture_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;


-- Soil Texture attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Soil Texture') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.soil_textures _labels;

-- Soil Texture zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Soil Texture') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_soil_textures _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.soil_textures _labels on _labels.id = _crops_atts.soil_textures_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;


-- Winter Survival attribute values
INSERT INTO attribute_values (attribute_id, value, data_type)
SELECT
	(SELECT id FROM attributes WHERE label = 'Winter Survival') as attribute_id, 
	_labels.label as label,
	(SELECT 'string'::attribute_value_data_type)	
FROM legacy.winter_survival _labels;

-- Winter Survival zone attributes
INSERT INTO crops_zones_attributes (crops_zone_id, attribute_value_id)
SELECT
	crops_zones.id as crops_zone_id, 
	_att_vals.id as _attribute_value_id
FROM
(
	SELECT
		(SELECT id FROM attributes WHERE label = 'Winter Survival') as attribute_id,
		crops.id as crop_id,
		zones.id as zone_id,
		_crops.id as _crop_id,
		_crops.label as crop,
		_crops.zone as zone,
		_labels."label" as label
	FROM legacy.crops_winter_survival _crops_atts
	JOIN legacy.crops _crops on _crops.id = _crops_atts.crop_id
	JOIN legacy.winter_survival _labels on _labels.id = _crops_atts.winter_survival_id
	JOIN crops on crops.label = _crops.label
	JOIN zones on zones."label" = _crops.zone::TEXT
	ORDER BY _crops."label"
) crop_data
JOIN crops_zones crops_zones on crop_data.zone_id = crops_zones.zone_id and crop_data.crop_id = crops_zones.crop_id
JOIN attribute_values _att_vals on _att_vals.attribute_id = crop_data.attribute_id and _att_vals."value" = crop_data."label" 
;
