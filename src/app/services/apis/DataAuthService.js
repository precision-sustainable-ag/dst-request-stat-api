

const auth_conf = require('../../../config/auth');
const { Log } = require('../../providers/LoggingProvider');
const { HttpClient } = require('../http/HttpClient');
const { JwtService } = require('../jwt/JwtService');

class DataAuthService {

    static AUTH_TOKEN;
    static CREDENTIALS;
    static API_KEYS;

    static isExpired(){
        if(!this.CREDENTIALS || !this.CREDENTIALS.exp) return true;
        if((Date.now()/1000) > this.CREDENTIALS.exp) return true;

        return false;
    }

    static async authorization(){
        if(this.AUTH_TOKEN && !this.isExpired()) return {token:this.AUTH_TOKEN, credentials:this.CREDENTIALS}
        return this.refreshAuthorization();
    }

    static async refreshAuthorization(){

        Log.Debug({heading:'Getting Authorization Token'});
        
        const token = await this.GetAuthorization();
        const credentials = await JwtService.decode(token);
        
        this.AUTH_TOKEN = token;
        this.CREDENTIALS = credentials;
        Log.Debug({heading:'Recieved Token',message:{token,credentials}});

        return {token,credentials};

    }

    static url(uri){
        const url = auth_conf.url;
        if(!uri) return url;

        return `${url}/${uri}`;
    }

    static async GetAuthorization(){
        Log.Debug({heading:'Requesting A New Authorization Token'});
        const url = this.url('auth');

        const response = await HttpClient.get(url,{
            key: auth_conf.key,
            secret: auth_conf.secret
        }).catch(err => { Log.Critical({heading:err.message, message:err.response.data}) });

        const token = response?.data?.data;

        return token;
    }

    static async GetApiKeys(){
        const {token, credentials} = await this.authorization();
        const uri = `access-tokens/${credentials.id}/api-keys`;
        const url = this.url(uri);
        console.log('>> AUTH',token,credentials);
        const response = await HttpClient.get(url,{},{headers:{authorization:token}}).catch(err => {
            Log.Critical({heading:`Failed to get ${uri} data`, message:{data:err.response.data, message: err.message, stack: err.stack}});
            return null;
        });

        if(!response) return null;

        if(response.status == 200){
            return this.API_KEYS = response.data.data;
        }

        return this.API_KEYS = [];
    }

}

module.exports = {
    DataAuthService
}