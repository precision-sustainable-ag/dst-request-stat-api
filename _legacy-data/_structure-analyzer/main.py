from json_objs.loadJsonObjects import getZonesCropData
from sql.convertDataObjectsToSQL import GenerateSQLTables, GenerateCrops, GenerateDataKeys, GenerateCropData,GenerateCropsAssociativeData

def createCropDataAssociationRows(raw_data_array, zones, output_folder='sql/statements'):    
    for index, zone in enumerate(zones):
        output_file = f'{output_folder}/create_zone{zone}_shape_rows.sql'
        sql = GenerateCropsAssociativeData(raw_data_array[index],zone)
        output(sql,output_file)

def createCropDataRows(raw_data_array, zones, output_folder='sql/statements'):    
    for index, zone in enumerate(zones):
        output_file = f'{output_folder}/create_zone{zone}_crop_data_rows.sql'
        sql = GenerateCropData(*[raw_data_array[index]],zones=[zone])
        output(sql,output_file)


def createDataKeysSQL(raw_data_array,):
    dataKeysSql = GenerateDataKeys(*raw_data_array)
    output(dataKeysSql,'create_data_keys_rows.sql')


def main():
    raw_crop_data = getZonesCropData()
    raw_crop_data_array = [raw_crop_data[x] for x in raw_crop_data.keys()]
    zones=[4,5,6,7]
    # createDataKeysSQL(raw_crop_data_array)
    # createCropDataRows(raw_crop_data_array,zones)     
    createCropDataAssociationRows(raw_crop_data_array,zones)
    # tables = GenerateSQLTables(*cropDataArray)
    # output(tables,filename='create_extra_tables.sql')
    # cropSql = GenerateCrops(*cropDataArray,zones=zones)
    # output(cropSql,filename='create_crops_rows.sql')
    # cropDataRows = GenerateCropData(*[cropDataArray[0]],zones=[4]])
    # output(cropDataRows,'create_zone4_crop_data_rows.sql')
    # cropDataRows = GenerateCropData(*[cropDataArray[1]],zones=[5])
    # output(cropDataRows,'create_zone5_crop_data_rows.sql')
    # cropDataRows = GenerateCropData(*[cropDataArray[2]],zones=[6])
    # output(cropDataRows,'create_zone6_crop_data_rows.sql')
    # cropDataRows = GenerateCropData(*[cropDataArray[3]],zones=[7])
    # output(cropDataRows,'create_zone7_crop_data_rows.sql')



def output(text, filename='output.txt'):
    with open(filename,'x') as output_file:
        output_file.write(text)

if __name__ == '__main__':
    main()
