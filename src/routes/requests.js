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

module.exports = Router.expose({path:'/requests', routes: [

    Route.post({path:'/', summary:"Create a Request Object", description:'Requires an Authorization token with the scope "stats_write"',
        request: CreateRequestRequest,
        handler:RequestsController.factory().create,
        response: CreateRequestResource
    }).middleware([Auth('stats_write')]),

    Route.get({path:'/', summary:"Get List of Requests Objects", description:'Requires an Authorization token with the scope "stats_read"',
        request: ListRequestsRequest,
        handler:RequestsController.factory().list,
        response: ListRequestsResource
    }).middleware([Auth('stats_read')]),

    Route.get({path:'/{id}', summary:"Retrieve a Request Object", description:'Requires an Authorization token with the scope "stats_read"',
        request: RetrieveRequestRequest,
        handler: RequestsController.factory().retrieve,
        response: RetrieveRequestResource
    }).middleware([Auth('stats_read')]),

]});
