
CREATE VIEW crop_data AS
SELECT
	crops.label as crop,
	regions.label as region,
	zones.label as zone,
	categories.label as category,
	attributes.label as attribute,
	attribute_values.value as value,
	attribute_values.data_type as data_type,
	attributes.is_array as is_array,
	attributes.is_strict as is_strict,
	crops.id as crop_id,
	zones.id as zone_id,
	crops_zones.id as crops_zone_id,
	attribute_values.id as attribute_value_id,
	attributes.id as attribute_id,
	categories.id as category_id,
	zones.region_id as region_id 
FROM crops
JOIN crops_zones on crops_zones.crop_id = crops.id
JOIN zones on crops_zones.zone_id = zones.id
JOIN regions on regions.id = zones.region_id
JOIN crops_zones_attributes on crops_zones_attributes.crops_zone_id = crops_zones.id
JOIN attribute_values on attribute_values.id = crops_zones_attributes.attribute_value_id
JOIN attributes on attributes.id = attribute_values.attribute_id
JOIN categories on categories.id = attributes.category_id
ORDER BY crops.id, zones.id, categories.label, attributes.id, attribute_values.value
;