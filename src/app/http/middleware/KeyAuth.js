const { JwtService } = require('../../services/jwt/JwtService');
const app_conf = require('../../../config/app');
const { KeyAuthProvider } = require('../../providers/KeyAuthProvider');


module.exports = () => {

    return async (req,res,next) => {
        // are we already authorized?
        if(req.authorized == true) return next();

        // get api key from request headers.
        const apiKey = req.headers.authorization;

        // is there an api key present?
        if(!apiKey) {
            req.authorized = false;
            return next();
        }

        // get all the api key map for this application.
        const keys = await KeyAuthProvider.factory();
        // get the key defined for this apiKey
        const key = keys[apiKey];

        // do we have this api key? is it valid?
        if(!key || key.deletedAt != null){
            req.authorized = false;
            return next();
        }

        // does this api key have specific clients? is this request originating from an accepted client?
        if(key.clients && Object.keys(key.clients).length >= 1){
            const ip = req.ip;
            const host = req.hostname;
            const client = req.headers['x-forwarded-for'];
            if(!key.clients[ip] && !key.clients[client] && !key.clients[host]){
                req.authorized = false;
                return next();
            }
        }

        // passed all of the checks.
        req.authorized = true;
        return next();

    }

}
