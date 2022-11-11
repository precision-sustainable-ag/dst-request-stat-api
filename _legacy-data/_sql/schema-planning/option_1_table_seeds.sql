CREATE TABLE option_2.regions (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL
);

CREATE TABLE option_2.crop_groups (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL
); 

CREATE TABLE option_2.usda_symbols (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL
); 

CREATE TABLE option_2.crop_families (
	id					SERIAL PRIMARY KEY,
	common_name			TEXT NOT NULL,
	scientific_name		TEXT NOT NULL
); 


CREATE TABLE option_2.zones (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL,
	region_id		INT NOT NULL,
	
	
	CONSTRAINT fk_zones_region_id FOREIGN KEY(region_id)
		REFERENCES option_2.regions(id)
);

CREATE TABLE option_2.crops (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL,
	scientific_name	TEXT NOT NULL,
	crop_group_id	INT,
	usda_symbold_id	INT,
	crop_family_id	INT,
	
	
	CONSTRAINT fk_crops_crop_group_id FOREIGN KEY(crop_group_id)
		REFERENCES option_2.crop_groups(id),
		
	CONSTRAINT fk_crops_usda_symbol_id FOREIGN KEY(usda_symbold_id)
		REFERENCES option_2.usda_symbols(id),
		
	CONSTRAINT fk_crops_crop_families_id FOREIGN KEY(crop_family_id)
		REFERENCES option_2.crop_families(id)
);

CREATE TABLE option_2.categories (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL
);  


CREATE TABLE option_2.crops_images (
	id				SERIAL PRIMARY KEY,
	growth_stage	TEXT NOT NULL,
	owner			TEXT,
	year_taken		TIMESTAMP,
	file_path		TEXT NOT NULL,
	is_thumbnail	BOOLEAN,
	region_id		INT,
	crop_id			INT NOT NULL,
	
	CONSTRAINT fk_crops_images_region_id FOREIGN KEY(region_id)
		REFERENCES option_2.regions(id),
	
	CONSTRAINT fk_crops_images_crop_id FOREIGN KEY(crop_id)
		REFERENCES option_2.crops(id)
);  

CREATE TABLE option_2.crops_zones (
	id				SERIAL PRIMARY KEY,
	crop_id			INT NOT NULL,
	zone_id			INT NOT NULL,
	
	
	CONSTRAINT fk_crops_zones_crop_id FOREIGN KEY(crop_id)
		REFERENCES option_2.crops(id),
	
	CONSTRAINT fk_crops_zones_zone_id FOREIGN KEY(zone_id)
		REFERENCES option_2.zones(id)
);    

CREATE TABLE option_2.attributes (
	id				SERIAL PRIMARY KEY,
	label			TEXT NOT NULL,
	is_array		BOOLEAN,
	category_id		INT NOT NULL,
	
	CONSTRAINT fk_attributes_category_id FOREIGN KEY(category_id)
		REFERENCES option_2.categories(id)
);

CREATE TYPE attribute_value_data_type AS ENUM (
	'int',
	'float',
	'string',
	'datetime'
);

CREATE TABLE option_2.attribute_values (
	id				SERIAL PRIMARY KEY,
	data_type		attribute_value_data_type NOT NULL,
	value			TEXT NOT NULL,
	attribute_id	INT NOT NULL,
	
	CONSTRAINT fk_attribute_values_attribute_id FOREIGN KEY(attribute_id)
		REFERENCES option_2.attributes(id)
);

CREATE TABLE option_2.crops_zone_attributes (
	id					SERIAL PRIMARY KEY,
	crops_zone_id		INT NOT NULL,
	attribute_value_id	INT NOT NULL,
	
	CONSTRAINT fk_crops_zone_attributes_crops_zone_id FOREIGN KEY(crops_zone_id)
		REFERENCES option_2.crops_zones(id),
		
	CONSTRAINT fk_crops_zone_attributes_attribute_value_id FOREIGN KEY(attribute_value_id)
		REFERENCES option_2.attribute_values(id)

);

