create view crop_data as
select 
	crops_zones_attributes.id as id,
	crops.label as crop,
	zones.label as zone,
	attributes.label as attribute,
	attribute_values.value as value,
	crops.id as crop_id,
	zones.id as zone_id,
	attributes.id as attribute_id,
	attribute_values.id as attribute_value_id,
	crops_zones.id as crops_zone_id,
	attributes.is_array as is_array,
	attribute_values.data_type as data_type
from crops_zones_attributes
join crops_zones on crops_zones.id = crops_zones_attributes.crops_zone_id
join zones on zones.id = crops_zones.zone_id
join crops on crops.id = crops_zones.crop_id
join attribute_values on attribute_values.id = crops_zones_attributes.attribute_value_id
join attributes on attributes.id = attribute_values.attribute_id
order by crops.id, zones.id, attributes."label"
;
