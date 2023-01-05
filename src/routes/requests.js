const { RequestsController } = require("../app/http/controllers/RequestsController");
const { CreateRequestRequest } = require("../app/http/requests/requests/CreateRequestRequest");
const { ListRequestsRequest } = require("../app/http/requests/requests/ListRequestsRequest");
const { RetrieveRequestRequest } = require("../app/http/requests/requests/RetrieveRequestRequest");
const { CreateRequestResource } = require("../app/http/resources/requests/CreateRequestResource");
const { ListRequestsResource } = require("../app/http/resources/requests/ListRequestsResource");
const { RetrieveRequestResource } = require("../app/http/resources/requests/RetrieveRequestResource");
const { Route } = require("../framework/routing/Route");
const { Router } = require("../framework/routing/Router");
const Auth = require('../app/http/middleware/Auth');
const KeyAuth = require('../app/http/middleware/KeyAuth');
const Public = require('../app/http/middleware/Public');

module.exports = Router.expose({path:'/requests', routes: [

    Route.post({path:'/', summary:"Create a Request Object", description:'REQUIRES an API Key (created through Data Auth Service). If you have created an API Key and this request is still not accepting the key, try refreshing the keys (theres an endpoint for that btw ;)',
        request: CreateRequestRequest,
        handler:RequestsController.factory().create,
        response: CreateRequestResource
    }).middleware([KeyAuth()]),

    Route.get({path:'/', summary:"Get List of Requests Objects", description:'REQUIRES an Authorization token with the scope "stats_read"',
        request: ListRequestsRequest,
        handler:RequestsController.factory().list,
        response: ListRequestsResource
    }).middleware([Auth('stats_read')]),

    Route.get({path:'/{id}', summary:"Retrieve a Request Object", description:'REQUIRES an Authorization token with the scope "stats_read"',
        request: RetrieveRequestRequest,
        handler: RequestsController.factory().retrieve,
        response: RetrieveRequestResource
    }).middleware([Auth('stats_read')]),

]});
