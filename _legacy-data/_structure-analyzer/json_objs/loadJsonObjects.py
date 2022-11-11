

import json
from config import ZONE_4_DIR, ZONE_5_DIR, ZONE_6_DIR, ZONE_7_DIR

ZONES = [ZONE_4_DIR,ZONE_5_DIR,ZONE_6_DIR,ZONE_7_DIR]

def LoadJSONData(filename):
    print('>>> loading json file:',filename)
    with open(filename) as raw_data:
        _json = json.load(raw_data)
        return _json 


def getZonesCropData():
    zones = {}
    for index, zone_dir in enumerate(ZONES):
        zones[ZONES[index]] = LoadJSONData(f'{zone_dir}/crop-data.json')
    return zones

def getCropDescriptionsData():
