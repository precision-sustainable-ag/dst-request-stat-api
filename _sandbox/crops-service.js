const { CoverCropsService } = require("../src/app/services/apis/CoverCropsService");



async function main(){

    const crops = await CoverCropsService.GetCrops();

    if(crops.length > 0){
        console.log('>>> CROP:');
        console.log(crops[0]);
    }
    
    const groups = await CoverCropsService.GetGroups();

    if(groups.length > 0){
        console.log('>>> GROUP:');
        console.log(groups[0]);
    }
    
}

main();