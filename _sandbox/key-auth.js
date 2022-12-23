const { DataAuthService } = require("../src/app/services/apis/DataAuthService");
const { HttpClient } = require("../src/app/services/http/HttpClient");
const axios = require('axios');

DataAuthService.GetApiKeys().then(keys => {
    console.log('keys',keys);
});

async function test(){
    console.log('teesting ...');

    console.log('first')
   await DataAuthService.GetApiKeys();
   console.log('second')
   await DataAuthService.GetApiKeys();
   console.log('third')
   await DataAuthService.GetApiKeys();
}

test();