const axios = require('axios');



class HttpClient {


    static async post(url, data,conf){

        return axios.post(url, data,conf);

    }

    static async get(url, params={},conf={}){
        return axios.get(url,{params,...conf});
    }
    
}

module.exports = {
    HttpClient
}