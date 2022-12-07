const {Router} = require('express');
const HasScopes = require('../app/http/middleware/HasScopes');
const Public = require('../app/http/middleware/Public');
const { RequestsController } = require('../app/http/controllers/RequestsController');
const { CreateRequestRequest: CreateRequest } = require('../app/http/requests/requests/CreateRequestRequest');
const { ListRequestsRequest: ListRequest } = require('../app/http/requests/requests/ListRequestsRequest');
const { RetrieveRequestRequest: GetRequest } = require('../app/http/requests/requests/RetrieveRequestRequest');
const { UpdateRequestRequest: UpdateRequest } = require('../app/http/requests/requests/UpdateRequestRequest');
const { DeleteRequestRequest: DeleteRequest } = require('../app/http/requests/requests/DeleteRequestRequest');

/**
 * We call the controller factory method
 * because this will create the controller and wrap all of the controller functions
 * with a handler function that returns a valid ExpressJS Middleware function.
 */
const Controller = RequestsController.factory();

const router = Router();

router.post('/',Public , CreateRequest.handle(),Controller.create);
router.get('/', Public, ListRequest.handle(),Controller.list);
router.get('/:id', Public, GetRequest.handle(),Controller.retrieve);
// router.put('/:id',Public, UpdateRequest.handle(),Controller.update);
// router.delete('/:id', Public, DeleteRequest.handle(),Controller.delete);

module.exports =  router



