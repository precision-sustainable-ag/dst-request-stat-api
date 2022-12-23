const {env} = require('./kernel');

module.exports =  {
    url: env.DATA_AUTH_URL,
    key: env.DATA_AUTH_KEY,
    secret: env.DATA_AUTH_SECRET,
}