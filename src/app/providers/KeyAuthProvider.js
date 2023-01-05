
const {Provider} = require('../../framework/providers/Provider');
const { DataAuthService } = require('../services/apis/DataAuthService');

class KeyAuthProvider extends Provider {

    static API_KEYS;

    static async register(app){
        return this.Refresh();
    }

    static async GetKeys(){
            const apiKeys = await DataAuthService.GetApiKeys();
            if(apiKeys === null) return null;
            const map = {};
            for(let apiKey of apiKeys){
                map[apiKey.key] = apiKey;
            }
            return map;

    }

    static async Refresh(){
        const map = await this.GetKeys();
        if(map === null) return false;
        this.API_KEYS = map
        return true;
    }

    static async factory(){
        if(this.API_KEYS) return this.API_KEYS;
        return this.API_KEYS = this.GetKeys();
    }

}


module.exports = {
    KeyAuthProvider
}
