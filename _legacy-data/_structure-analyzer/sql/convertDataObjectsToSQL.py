


def buildStandardizedTableName(key:str):
    return key.strip().lower().replace(' ','_')


def buildStandardizedLabel(key:str):
    return key.strip().lower().replace(' ','_').replace(',','_').replace('/[^\w\s]/g','')

def getAssociativeTables(*zonesData):
    tables = {}
    for zoneData in zonesData:
        for _obj in zoneData:
            for key, value in _obj.items():
                table_name = buildStandardizedTableName(key)
                if isinstance(value,list):
                    tables[table_name] = tables.get(table_name,set()).union(set(value))
    return tables

def GenerateSQLTables(*zonesData):
    tables = getAssociativeTables(*zonesData)
    sql = ''
    for table_name, values in tables.items():
        sql = f'{sql}CREATE TABLE {table_name}(\n\tid\tSERIAL PRIMARY KEY,\n\tlabel\tTEXT\n);\n'
        sql = f'{sql}CREATE TABLE crops_{table_name}(\n\tid\tSERIAL PRIMARY KEY,\n\tcrop_id\tINT,\n\t{table_name}_id\tINT\n);'
        insert_statement = f'INSERT INTO {table_name} (label) VALUES'
        for index, value in enumerate(values):
            if index == len(values) - 1:
                insert_statement = f'{insert_statement}\n(\'{value}\');'
            else:
                insert_statement = f'{insert_statement}\n(\'{value}\'),'
        sql = f'{sql}\n{insert_statement}\n\n'

    return sql


def GenerateCrops(*zonesData,zones=[]):
    sql = 'INSERT INTO crops (label, zone) VALUES'
    for index, zoneData in enumerate(zonesData):
        for _index, _obj in enumerate(zoneData):
            cropName = _obj['Cover Crop Name']
            zone = _obj.get("Zone",zones[index])
            if _index < len(zoneData) - 1:
                sql = f'{sql}\n(\'{cropName}\',{zone}),'
            else:
                sql = f'{sql}\n(\'{cropName}\',{zone});'
    return sql

def GenerateCropDescriptions(rawData):


def GenerateDataKeys(*zonesData):
    keys = {}
    for zoneData in zonesData:
        for _obj in zoneData:
            for label, value in _obj.items():
                if isinstance(value, list):
                    continue
                key = buildStandardizedLabel(label)
                keys[key] = label
    sql = 'INSERT INTO data_keys (label, key) VALUES'
    for index, key in enumerate(keys):
        label = keys[key]
        if index < len(keys) - 1:
            sql = f'{sql}\n(\'{label}\',\'{key}\'),'
        else:
            sql = f'{sql}\n(\'{label}\',\'{key}\');'
    return sql

def GenerateCropData(*zonesData, zones=[]):
    sql = 'INSERT INTO crop_data (crop_id, data_key_id, value) VALUES'
    for index, zoneData in enumerate(zonesData):
        for _obj in zoneData:
            crop_name = _obj['Cover Crop Name']
            zone = _obj.get("Zone",zones[index])
            cover_crop_id = f'(SELECT id FROM crops WHERE label = \'{crop_name}\' and zone = {zone})'
            for key, value in _obj.items():
                if isinstance(value, list):
                    continue
                if isinstance(value,dict):
                    continue
                else:
                    value = str(value).replace('\'','\'\'')
                    data_key_label = buildStandardizedLabel(key)
                    data_key_id = f'(SELECT id FROM data_keys WHERE key = \'{data_key_label}\')'
                    # TODO: Fix this statement to close on a ; instead of a ,
                    sql = f'{sql}\n({cover_crop_id},{data_key_id},\'{value}\'),'
    return sql

def GenerateCropsAssociativeData(zoneData, zone):
    tables = {}
    for _obj in zoneData:
        crop_name = _obj['Cover Crop Name']
        cover_crop_id = f'(SELECT id FROM crops WHERE label = \'{crop_name}\' and zone = {zone})'
        for key, value in _obj.items():
            if isinstance(value,list):
                table_name = buildStandardizedTableName(key)
                insertion_values = ''
                for item in value:
                    table_fk_id = f'(SELECT id FROM {table_name} WHERE label = \'{item}\')'
                    insertion_values = f'({cover_crop_id},{table_fk_id})'
                    tables[table_name] = tables.get(table_name,set()).union({insertion_values})
    sql = ''    
    for table_name, values in tables.items():
        if table_name == 'shape_&_orientation':
            table_name = 'shape_and_orientation'
            sql = f'{sql}INSERT INTO crops_{table_name} (crop_id, {table_name}_id) VALUES'
            for index, value in enumerate(values):
                if index < len(values) - 1:
                    sql = f'{sql}\n{value},'
                else: 
                    sql = f'{sql}\n{value};\n'
        else:
            continue
    return sql

                

