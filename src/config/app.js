const {env} = require('./kernel');

module.exports =  {
    name: env.APP_NAME ?? 'Express API',
    port: env.APP_PORT ?? 3000,
    env: env.APP_ENV ?? 'local',
    authorized: env.APP_ENV == 'local',
    key: env.APP_KEY,
    secret: env.APP_SECRET,
}