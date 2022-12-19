const { authorized } = require('../../../config/app');
const { Log } = require('../../providers/LoggingProvider');
const { JwtService } = require('../../services/jwt/JwtService');

function ParseScopes(scopes){
    if(!scopes) return [];
    if(typeof scopes == 'string') scopes = scopes.trim().split(',');
    return scopes;

}

module.exports = (scopes) => {
    scopes = ParseScopes(scopes);

    return async (req,res,next) => {
        if(!req.token) {
            const token = await JwtService.decode(req.headers.authorization);
            req.token = token;
        }

        if(!req.token) {
            req.authorized = false;
            return next();
        }

        if(scopes.length <= 0){
            req.authorized = true;
            return next();
        } 

        const tokenScopes = req?.token?.scopes;
        console.log('>>> TOKEN SCOPES',tokenScopes)
        for(let scope of scopes){
            console.log('>>> LOOKING FOR',scope,'found?',tokenScopes.includes(scope))
            if(!tokenScopes.includes(scope)){
                console.log('unauthorized...')
                req.authorized = false;
                return next();
            }
        }

        req.authorized = true;

        return next();

    }

}
