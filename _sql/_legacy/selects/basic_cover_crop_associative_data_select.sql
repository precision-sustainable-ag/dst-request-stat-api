SELECT soil_drainage.label FROM crops
JOIN crops_soil_drainage on crops_soil_drainage.crop_id = crops.id
JOIN soil_drainage on soil_drainage.id = crops_soil_drainage.soil_drainage_id
WHERE crops."label" = 'Barley, Spring' AND crops."zone" = 4;