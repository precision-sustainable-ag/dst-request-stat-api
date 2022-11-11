SELECT data_keys."label" as "key", crop_data."value" as "value" FROM crop_data
JOIN crops on crop_data.crop_id = crops.id
JOIN data_keys on crop_data.data_key_id = data_keys.id
WHERE crops."label" = 'Barley, Spring' and crops."zone" = 4;
