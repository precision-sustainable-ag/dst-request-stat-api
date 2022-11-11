create view Xcrops as
select
	crops.id as id,
	temp_crops.id as old_id,
	crops.label as label
from crops
join temp_crops on temp_crops."label" = crops."label"
;


create view Xzones as
select
	zones.id as id,
	temp_zones.id as old_id,
	zones.label as label
from zones
join temp_zones on temp_zones."label" = zones."label"
;


create view xcrops_zones as
select 
	crops_zones.id as crops_zones_id, 
	crops_zones.crop_id,
	crops_zones.zone_id,
	temp_crops_zones.id as old_crop_zone_id,
	temp_crops_zones.crop_id as old_cz_crop_id,
	temp_crops_zones.zone_id as old_cz_zone_id,
	xcrops.id as current_crop_id,
	xcrops.old_id as old_crop_id,
	xcrops."label" as crop,
	xzones.id as current_zone_id,
	xzones.old_id as old_zone_id,
	xzones.label as zone
from crops_zones
join xcrops on crops_zones.crop_id = xcrops.id
join xzones on crops_zones.zone_id = xzones.id
join temp_crops_zones on temp_crops_zones.crop_id = xcrops.old_id and temp_crops_zones.zone_id = xzones.old_id
;


select * from xcrops;
select * from xzones;
select * from xcrops_zones;
select * from xcrops_zones_attributes;

select * from temp_crops_zones_attributes;

create view xcrops_zones_attributes as
select 
	*
from temp_crops_zones_attributes
join xcrops_zones on xcrops_zones.old_crop_zone_id = temp_crops_zones_attributes.crops_zone_id
order by crops_zone_id
;


select 
	xcrops_zones_attributes.crop as crop,
	xcrops_zones_attributes."zone" as zone,
	"attributes"."label" as attribute,
	attribute_values."value" as value
from xcrops_zones_attributes
join attribute_values on attribute_values.id = xcrops_zones_attributes.attribute_value_id
join "attributes" on "attributes".id = attribute_values.attribute_id
;

insert into crops_zones_attributes (attribute_value_id, crops_zone_id)
select 
	xcrops_zones_attributes.attribute_value_id,
	xcrops_zones_attributes.crops_zones_id
from xcrops_zones_attributes;


ALTER TABLE categories ALTER COLUMN created_at SET DEFAULT now();
ALTER TABLE categories ALTER COLUMN updated_at SET DEFAULT now(); 

ALTER TABLE "attributes" ALTER COLUMN created_at SET DEFAULT now();
ALTER TABLE "attributes" ALTER COLUMN updated_at SET DEFAULT now(); 

ALTER TABLE attribute_values ALTER COLUMN created_at SET DEFAULT now();
ALTER TABLE attribute_values ALTER COLUMN updated_at SET DEFAULT now(); 

ALTER TABLE crops_zones_attributes ALTER COLUMN created_at SET DEFAULT now();
ALTER TABLE crops_zones_attributes ALTER COLUMN updated_at SET DEFAULT now(); 

