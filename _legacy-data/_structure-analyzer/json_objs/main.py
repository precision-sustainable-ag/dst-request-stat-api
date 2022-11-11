import json

zone4DataObjects = open('./zone4/crop-data.json')

zone4CropData = json.load(zone4DataObjects)

zone4DataObjects.close()


typesToString = {
    list: 'array',
    dict: 'object',
    int: 'int',
    str: 'string',
    float:'decimal',
    bool:'bool',
    None: 'null',
}


def interpretJSON(data, keys={},key=None):
    if isinstance(data, list):
        for item in data:
            if key is None:
                keys['Initial Object'] = typesToString.get(list)
            interpretJSON(item,keys,key)
    elif isinstance(data,dict):
        for _key, value in data.items():
            if isinstance(value, dict):
                keys[_key] = {}
                interpretJSON(value,keys[_key],_key)
            elif isinstance(value, list) and len(value) >= 1:
                keys[_key] = []
                interpretJSON(value[0],keys[_key],0)
            else:
                keys[_key] = typesToString.get(type(value),'unknown')
    else:
        if isinstance(keys, list):
            keys.append(typesToString.get(type(data),'unknown'))
        else:
            keys[key] = typesToString.get(type(data),'unknown')




# _files = {
#     "../descriptions": [
#         "crop-descriptions.json",
#     ],
#     "../image-locations": [
#         "image-dictionary.json",
#     ],
#     "../InformationSheet": [
#         "source.json",
#     ],
#     "../sidebar": [
#         "sidebar-categories.json",
#         "sidebar-filters.json",
#     ],
#     "../zone4": [
#         "crop-data.json",
#         "data-dictionary.json",
#     ],
#     "../zone5": [
#         "crop-data.json",
#         "data-dictionary.json",
#     ],
#     "../zone6": [
#         "crop-data.json",
#         "data-dictionary.json",
#     ],
#     "../zone7": [
#         "crop-data.json",
#         "data-dictionary.json",
#     ],
# }
def generateStructures(folders:dict):
    for folder, files in folders.items():
        for file in files:
            filepath = f'./{folder}/{file}'
            print('>>> interpreting ',filepath, '...')
            with open(filepath) as jsonFile: 
                JSON = json.load(jsonFile)
                keys = {}
                interpretJSON(JSON,keys)
                _strucFile = open(f'./{folder}/structure-{file}','x')
                _strucFile.write(str(keys))
                _strucFile.close()

# generateStructures(_files)

def compareStructures(a:dict,b:dict):
    unique = set()
    for key in a.keys():
        if key in b.keys():
            continue
        else:
            unique.add(key)
    return unique

def getMissingKeysDict(struc, strucs:dict):
    missing = {}
    for key, value in strucs.items():
        uniques = compareStructures(struc,value)
        lst = list(uniques)
        lst.sort()
        missing[key] = lst
    return missing

# def generateUniqueKeys():
#     with open('./zone4/crop-data.json') as zone4, open('./zone5/crop-data.json') as zone5, open('./zone6/crop-data.json') as zone6,open('./zone7/crop-data.json') as zone7:
#         jsonZ4 = json.load(zone4)
#         jsonZ5 = json.load(zone5)
#         jsonZ6 = json.load(zone6)
#         jsonZ7 = json.load(zone7)

#         strucZ4 = {}
#         strucZ5 = {}
#         strucZ6 = {}
#         strucZ7 = {}

#         interpretJSON(jsonZ4,strucZ4)
#         interpretJSON(jsonZ5,strucZ5)
#         interpretJSON(jsonZ6,strucZ6)
#         interpretJSON(jsonZ7,strucZ7)

#         with open('./zone4/unique-data-crop-keys.json','w') as uniqueZ4, open('./zone5/unique-data-crop-keys.json','w') as uniqueZ5, open('./zone6/unique-data-crop-keys.json','w') as uniqueZ6, open('./zone7/unique-data-crop-keys.json','w') as uniqueZ7:

#             writeUniques(uniqueZ4,strucZ4,{'z5':strucZ5,'z6':strucZ6,'z7':strucZ7})
#             writeUniques(uniqueZ5,strucZ5,{'z4':strucZ4,'z6':strucZ6,'z7':strucZ7})
#             writeUniques(uniqueZ6,strucZ6,{'z5':strucZ5,'z4':strucZ4,'z7':strucZ7})
#             writeUniques(uniqueZ7,strucZ7,{'z5':strucZ5,'z6':strucZ6,'z4':strucZ4})


def writeStrucCSV(filename,struc:dict):
    import csv
    with open(filename,'x') as doc:
        writer = csv.writer(doc)
        for key, value in struc.items():
            row = [key,str(value)]
            writer.writerow(row)

def writeOddKeysCSV(filename,oddies):
    import csv
    with open(filename,'w') as doc:
        writer = csv.writer(doc)
        header = []
        cols = {}
        for key, value in oddies.items():
            row = [key, *value]
            writer.writerow(row)
        

            

def generateCSVS():
    with open('./zone4/crop-data.json') as zone4, open('./zone5/crop-data.json') as zone5, open('./zone6/crop-data.json') as zone6,open('./zone7/crop-data.json') as zone7:
        jsonZ4 = json.load(zone4)
        jsonZ5 = json.load(zone5)
        jsonZ6 = json.load(zone6)
        jsonZ7 = json.load(zone7)

        strucZ4 = {}
        strucZ5 = {}
        strucZ6 = {}
        strucZ7 = {}

        interpretJSON(jsonZ4,strucZ4)
        interpretJSON(jsonZ5,strucZ5)
        interpretJSON(jsonZ6,strucZ6)
        interpretJSON(jsonZ7,strucZ7)

        writeOddKeysCSV('./zone4-odd-keys.csv',getMissingKeysDict(strucZ4,{'z5':strucZ5,'z6':strucZ6,'z7':strucZ7}))
        writeOddKeysCSV('./zone5-odd-keys.csv',getMissingKeysDict(strucZ5,{'z4':strucZ4,'z6':strucZ6,'z7':strucZ7}))
        writeOddKeysCSV('./zone6-odd-keys.csv',getMissingKeysDict(strucZ6,{'z5':strucZ5,'z4':strucZ4,'z7':strucZ7}))
        writeOddKeysCSV('./zone7-odd-keys.csv',getMissingKeysDict(strucZ7,{'z5':strucZ5,'z6':strucZ6,'z4':strucZ4}))

        # writeStrucCSV('./zone4-structs.csv',strucZ4)
        # writeStrucCSV('./zone5-structs.csv',strucZ5)
        # writeStrucCSV('./zone6-structs.csv',strucZ6)
        # writeStrucCSV('./zone7-structs.csv',strucZ7)
    
# generateCSVS()
        
