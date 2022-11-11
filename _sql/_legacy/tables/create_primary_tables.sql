CREATE SCHEMA legacy;


CREATE TABLE "legacy".crops (
	id	    SERIAL PRIMARY KEY,
    label   TEXT,
    zone    INT
);


CREATE TABLE "legacy".data_keys (
	id	    SERIAL PRIMARY KEY,
    label   TEXT,
    key     TEXT
);

CREATE TABLE "legacy".crop_data (
	id	        SERIAL PRIMARY KEY,
    crop_id     INT,
    data_key_id INT,
    value       TEXT
);


