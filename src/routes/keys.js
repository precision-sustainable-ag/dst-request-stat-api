const { ApiKeysController } = require("../app/http/controllers/ApiKeysController");
const { Route } = require("../framework/routing/Route");
const { Router } = require("../framework/routing/Router");
const Auth = require('../app/http/middleware/Auth');
const { RefreshApiKeysRequest } = require("../app/http/requests/apiKeys/RefreshApiKeysRequest");
const { RefreshApiKeysResource } = require("../app/http/resources/apiKeys/RefreshApiKeysResource");
const { RefreshAuthorizationRequest } = require("../app/http/requests/apiKeys/RefreshAuthorizationRequest");
const { RefreshAuthResource } = require("../app/http/resources/apiKeys/RefreshAuthResource");

module.exports = Router.expose({path:'/auth', routes: [

    Route.post({path:'/refresh-keys', summary:"Refresh API Keys", description:'REQUIRES Authorization token with "stats_admin" scope.',
        request: RefreshApiKeysRequest,
        handler:ApiKeysController.factory().refreshApiKeys,
        response: RefreshApiKeysResource
    }).middleware([Auth('stats_admin')]),

    Route.post({path:'/refresh', summary:"Refresh Authorization Access Token", description:'REQUIRES Authorization token with "stats_admin" scope.',
        request: RefreshAuthorizationRequest,
        handler:ApiKeysController.factory().refreshAuthorization,
        response: RefreshAuthResource
    }).middleware([Auth('stats_admin')]),

]});
