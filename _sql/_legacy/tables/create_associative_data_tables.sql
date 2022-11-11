CREATE TABLE "legacy".inoculant_type(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_inoculant_type(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	inoculant_type_id	INT
);
INSERT INTO "legacy".inoculant_type (label) VALUES
('none'),
('white clover'),
('crimson clover'),
('sweetclover'),
('lespedeza'),
('soybean'),
('cowpea'),
('alfalfa'),
('berseem clover'),
('red clover'),
('pea/vetch'),
('lima bean'),
('peanut');

CREATE TABLE "legacy".zone_inclusion(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_zone_inclusion(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	zone_inclusion_id	INT
);
INSERT INTO "legacy".zone_inclusion (label) VALUES
('Zone 4'),
('Zone 6'),
('Zone 7'),
('Zone 5');

CREATE TABLE "legacy".winter_survival(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_winter_survival(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	winter_survival_id	INT
);
INSERT INTO "legacy".winter_survival (label) VALUES
('Seldom'),
('Never'),
('Expected');

CREATE TABLE "legacy".root_architecture(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_root_architecture(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	root_architecture_id	INT
);
INSERT INTO "legacy".root_architecture (label) VALUES
('Tap'),
('Fibrous');

CREATE TABLE "legacy".soil_drainage(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_soil_drainage(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	soil_drainage_id	INT
);
INSERT INTO "legacy".soil_drainage (label) VALUES
('Saturated muck'),
('Somewhat Excessively Drained'),
('Very poorly drained'),
('Well drained muck'),
('Well drained'),
('Poorly drained'),
('Moderately well drained'),
('Somewhat poorly drained'),
('Excessively drained'),
('Somewhat excessively drained');

CREATE TABLE "legacy".soil_textures(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_soil_textures(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	soil_textures_id	INT
);
INSERT INTO "legacy".soil_textures (label) VALUES
('Coarse'),
('Fine'),
('medium'),
('fine'),
('Medium'),
('coarse');

CREATE TABLE "legacy".active_growth_period(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_active_growth_period(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	active_growth_period_id	INT
);
INSERT INTO "legacy".active_growth_period (label) VALUES
('Summer'),
('Fall'),
('Winter'),
('Spring');

CREATE TABLE "legacy".shape_and_orientation(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);

CREATE TABLE "legacy".crops_shape_and_orientation(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	shape_&_orientation_id	INT
);

INSERT INTO "legacy".shape_and_orientation (label) VALUES
('Semi-Erect'),
('Climbing'),
('Erect'),
('Prostrate');

CREATE TABLE "legacy".duration(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_duration(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	duration_id	INT
);
INSERT INTO "legacy".duration (label) VALUES
('Annual'),
('Biennial'),
('Perennial'),
('Short-lived Perennial');

CREATE TABLE "legacy".flowering_trigger(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_flowering_trigger(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	flowering_trigger_id	INT
);
INSERT INTO "legacy".flowering_trigger (label) VALUES
('Plant Size'),
('short day'),
('Long Day'),
('Vernalization'),
('Short Day'),
('Intermediate Day');

CREATE TABLE "legacy".seeding_rate_calculator_2(
	id	SERIAL PRIMARY KEY,
	label	TEXT
);
CREATE TABLE "legacy".crops_seeding_rate_calculator_2(
	id	SERIAL PRIMARY KEY,
	crop_id	INT,
	seeding_rate_calculator_2_id	INT
);
INSERT INTO "legacy".seeding_rate_calculator_2 (label) VALUES
('recEl1a6KPEQaGjSt'),
('recGaU4Jnd2huQFdZ'),
('recD1kk3xS5qD6Q8k');

