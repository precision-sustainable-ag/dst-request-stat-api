 SELECT crops.label AS crop,
    crops.zone,
    data_keys.label AS data_key,
    crop_data.value,
    crops.id AS crop_id,
    data_keys.id AS data_key_id,
    crop_data.id AS crop_data_id
   FROM "legacy".crops crops
     JOIN "legacy".crop_data crop_data ON crop_data.crop_id = crops.id
     JOIN "legacy".data_keys data_keys ON data_keys.id = crop_data.data_key_id;