const bodyParser = require('body-parser');
const {Request} = require('../../../../framework/requests/Request');
const { Request:RequestModel } = require('../../../models/Request');


class CreateRequestRequest extends Request {
   
    /**
     * unless other middleware is introduced between the request handler and the controller handler,
     * this will override any other Auth middleware and automatically authorize any requests.
     */
    authorized(){
        return false;
    }

    /**
     * return true if validation is strict.
     * strict validation will disallow any additional parameters 
     * to be present in the incoming request query / path params / body
     */
    strict(){
        return true;
    }

    /**
     * return true to filter the incoming request query / path params / body
     * BEFORE validation occurs. 
     */
    filtered(){
        return true;
    }

    /**
     * returns ExpressJS middleware function that provides the type of parsing you require to complete this request.
     * This may return a function or an array of functions.
     * For more information on ExpressJS Middleware visit: https://expressjs.com/en/guide/writing-middleware.html
     */
    parser(){
        return bodyParser.json();
    }
    
    /**
     * follow OpenAPI standards of parameter declaration
     * https://spec.openapis.org/oas/v3.0.0#parameter-object
     */
    parameters(){
        return [
            
        ];
    }

    /**
     * returns schema required to validate incoming request body.
     * follow OpenAPI 3.0.0 standards for schema declaration 
     * https://spec.openapis.org/oas/v3.0.0#schema-object
     */
    body(){
        return RequestModel.schema({exclude:[{prop:'autoIncrement',value:true}]});
    }

}

module.exports = { CreateRequestRequest }