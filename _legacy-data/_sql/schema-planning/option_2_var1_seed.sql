INSERT INTO option_2.crop_groups (label) 
-- GET ALL DISTINCT CROP GROUP LABELS
select 
	distinct value 
from crop_data_detailed
where data_key ilike '%group%';

INSERT INTO option_2.usda_symbols (label)
-- GET ALL DISTINCT USDA SYMBOLS
select 
	distinct value
from crop_data_detailed
where data_key ilike '%usda%';

INSERT INTO option_2.crop_families (common_name, scientific_name)
-- GET ALL DISTINCT FAMILY NAMES ( common / scientific )
select 
	distinct common_name,
	scientific_name
from
(
	select
		family_commons.crop as crop,
		family_commons.value as common_name,
		family_scientifics.value as scientific_name
	from
		(select * from crop_data_detailed where data_key ilike '%family%common%') family_commons
	join 
		(select * from crop_data_detailed where data_key ilike '%family%scientific%') family_scientifics
	on family_commons.crop_id = family_scientifics.crop_id
	order by common_name
) families 	
;

INSERT INTO option_2.regions (label) values ('Northeast');

INSERT INTO option_2.zones (label, region_id)
-- GET ALL DISTINCT ZONES
select
	distinct value as zone,
	region.id as region_id
from crop_data_detailed
join (select id from option_2.regions where label = 'Northeast') region on region.id is not null
where data_key ilike 'zone'
order by value;

INSERT INTO option_2.crops (label, scientific_name, )
-- GET ALL DISTINCT CROPS AND THEIR ASSOCIATIONS
select
	scientific_names.*,
	groups.group_id,
	usda_symbols.symbol_id as usda_symbol,
	fam_common_names.family_id
from 
	(select distinct crop, value as scientific_name from crop_data_detailed where crop_data_detailed.data_key ilike 'scientific%name%') scientific_names
join
	(select distinct crop, value as group, option_2.crop_groups.id as group_id from crop_data_detailed 
		join option_2.crop_groups on option_2.crop_groups."label" = crop_data_detailed.value
		where crop_data_detailed.data_key ilike '%group%'
	) groups
	on scientific_names.crop = groups.crop
join
	(select distinct crop, value as usda_symbol, option_2.usda_symbols.id as symbol_id from crop_data_detailed 
		join option_2.usda_symbols on option_2.usda_symbols."label" = crop_data_detailed.value
		where crop_data_detailed.data_key ilike '%usda%'
	) usda_symbols
	on scientific_names.crop = usda_symbols.crop
join
	(select distinct crop, value as fam_common_name, option_2.crop_families.id as family_id from crop_data_detailed
		join option_2.crop_families on option_2.crop_families.common_name = crop_data_detailed.value
		where crop_data_detailed.data_key ilike '%family%common%'
	) fam_common_names
	on scientific_names.crop = fam_common_names.crop
;


-- GET CROPS ZONES
select 
 label as crop,
 zone as zone
from crops
order by label, zone;

select 
* 
from crop_data_detailed
order by crop, zone, data_key;



-- SHOW USAGE STATS FOR USDA SYMBOLS
select 
	data_key,
	value,
	count(value)
from crop_data_detailed
where data_key ilike '%usda%'
group by data_key, value;


-- VALIDATE THAT SCIENTIFIC NAME AND COMMON NAME ARE UNIQUELY PAIRED
select 
	common_name,
	count(distinct scientific_name) as count_of_distinct_scientific_names
from
(
	select
		family_commons.crop as crop,
		family_commons.value as common_name,
		family_scientifics.value as scientific_name
	from
		(select * from crop_data_detailed where data_key ilike '%family%common%') family_commons
	join 
		(select * from crop_data_detailed where data_key ilike '%family%scientific%') family_scientifics
	on family_commons.crop_id = family_scientifics.crop_id
	order by common_name
) families 	
group by common_name;