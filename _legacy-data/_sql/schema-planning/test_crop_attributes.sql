CREATE SCHEMA option_1;


CREATE TYPE crop_attribute_type AS ENUM (
	'planting_and_growth_windows', 
	'soil_drainage',
	'growth_traits',
	'planting','
	termination',
	'goals',
	'extended_comments',
	'references_and_resources'
);

CREATE TYPE attribute_data_type AS ENUM (
	'int', 'string', 'datetime', 'float'
);


CREATE TABLE option_1.crops (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL,
	description		TEXT,
	origin			TEXT,
	thumbnail		TEXT

);

DROP TABLE option_1.crop_attributes;
CREATE TABLE option_1.crop_attribute_id (
	id			SERIAL PRIMARY KEY,
	label		TEXT NOT NULL,
	type		crop_attribute_type NOT NULL,
	is_array	BOOLEAN NOT NULL DEFAULT false
);

CREATE TABLE option_1.crop_data (
	id					SERIAL PRIMARY KEY,
	value				TEXT NOT NULL,
	data_type			attribute_data_type NOT NULL,
	crop_id				INT NOT NULL,
	crop_attribute_id	INT NOT NULL,
	
	CONSTRAINT fk_crop_data_crop_id FOREIGN KEY(crop_id)
		REFERENCES option_1.crops(id),
	
	CONSTRAINT fk_crop_data_crop_attribute_id FOREIGN KEY(crop_attribute_id)
		REFERENCES option_1.crop_attributes(id)
);



INSERT INTO option_1.crops (label) VALUES ('Alfalfa, Dormant');

INSERT INTO option_1.crop_attributes (label, type, is_array) VALUES ('Soil Drainage', 'soil_drainage', true);

INSERT INTO option_1.crop_data (value, data_type, crop_id, crop_attribute_id) VALUES ('Somewhat poorly drained','string',1,1);
