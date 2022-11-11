const { CropData } = require('../app/facades/CropData');
const {ModelsProvider} = require('../app/providers/ModelsProvider')



async function run(){
    const MIGRATIONS = await ModelsProvider.factory();


    for (let migration of Object.values(MIGRATIONS)) {
    
        await migration.sync();
    }

    await CropData.CreateView()
}

run();

module.exports = {
    run
}