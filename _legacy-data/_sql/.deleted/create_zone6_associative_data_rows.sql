INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_seeding_rate_calculator_2 (crop_id, seeding_rate_calculator_2_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Spring' and zone = 6),(SELECT id FROM seeding_rate_calculator_2 WHERE label = 'recEl1a6KPEQaGjSt'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_seeding_rate_calculator_2 (crop_id, seeding_rate_calculator_2_id) VALUES
((SELECT id FROM crops WHERE label = 'Barley, Winter' and zone = 6),(SELECT id FROM seeding_rate_calculator_2 WHERE label = 'recD1kk3xS5qD6Q8k'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day')),

((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6'));
INSERT INTO crops_seeding_rate_calculator_2 (crop_id, seeding_rate_calculator_2_id) VALUES
((SELECT id FROM crops WHERE label = 'Brassica, Forage' and zone = 6),(SELECT id FROM seeding_rate_calculator_2 WHERE label = 'recGaU4Jnd2huQFdZ'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Semi-Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Buckwheat' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Saturated muck')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Saturated muck')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Cereal Rye, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter')),

((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'berseem clover')),

((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'crimson clover'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Clover, Balansa' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'berseem clover')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'crimson clover'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Clover, Berseem' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Semi-Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'crimson clover')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'berseem clover'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Clover, Crimson' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM duration WHERE label = 'Short-lived Perennial'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'red clover')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'white clover'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Clover, Red' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Semi-Erect')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Climbing'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'cowpea')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'lespedeza'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Cowpea' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Saturated muck')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Very poorly drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Intermediate Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Millet, Japanese' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Saturated muck')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'short day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Millet, Pearl' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Mustard' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Oats' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Black' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Oats, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Semi-Erect')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Climbing'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'pea/vetch'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Pea, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Semi-Erect')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Climbing'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'pea/vetch'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Pea, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Phacelia' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Seldom'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Radish, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Rapeseed, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Saturated muck')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Annual' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM duration WHERE label = 'Short-lived Perennial'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Semi-Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Saturated muck')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Ryegrass, Perennial' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Sorghum-sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'soybean'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Intermediate Day')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Soybeans' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Sudangrass' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Plant Size'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4')),

((SELECT id FROM crops WHERE label = 'Sunflower' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'peanut')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'lima bean'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Intermediate Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Sunn Hemp' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM duration WHERE label = 'Biennial')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Poorly drained')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'alfalfa')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'sweetclover'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Sweetclover, Yellow' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Summer'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Intermediate Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Teff' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Triticale, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Triticale, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Turnip, Forage' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Turnip, Purple Top' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Climbing'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'pea/vetch'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Tap'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Vetch, Hairy' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Never'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Fall')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained muck')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Long Day'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Wheat, Spring' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
INSERT INTO crops_winter_survival (crop_id, winter_survival_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM winter_survival WHERE label = 'Expected'));
INSERT INTO crops_active_growth_period (crop_id, active_growth_period_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Winter')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM active_growth_period WHERE label = 'Spring'));
INSERT INTO crops_duration (crop_id, duration_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM duration WHERE label = 'Annual'));
INSERT INTO crops_shape_&_orientation (crop_id, shape_&_orientation_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM shape_&_orientation WHERE label = 'Erect'));
INSERT INTO crops_soil_drainage (crop_id, soil_drainage_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat poorly drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Moderately well drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Well drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Excessively drained')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_drainage WHERE label = 'Somewhat Excessively Drained'));
INSERT INTO crops_inoculant_type (crop_id, inoculant_type_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM inoculant_type WHERE label = 'none'));
INSERT INTO crops_soil_textures (crop_id, soil_textures_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Coarse')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Fine')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM soil_textures WHERE label = 'Medium'));
INSERT INTO crops_flowering_trigger (crop_id, flowering_trigger_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM flowering_trigger WHERE label = 'Vernalization'));
INSERT INTO crops_root_architecture (crop_id, root_architecture_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM root_architecture WHERE label = 'Fibrous'));
INSERT INTO crops_zone_inclusion (crop_id, zone_inclusion_id) VALUES
((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 6')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 7')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 5')),

((SELECT id FROM crops WHERE label = 'Wheat, Winter' and zone = 6),(SELECT id FROM zone_inclusion WHERE label = 'Zone 4'));
