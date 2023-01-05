const { BadRequestError } = require('../../../../framework/errors/BadRequestError');
const { InternalServerError } = require('../../../../framework/errors/InternalServerError');
const { UnprocessibleEntityError } = require('../../../../framework/errors/UnprocessibleEntityError');
const { CreateResource } = require('../../../../framework/resources/CreateResource');
const { Request } = require('../../../models/Request');


class CreateRequestResource extends CreateResource {

    /**
    * returns HTTP Status code for the error.
    * https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
    */
    status(){
        return 201
    }
    
    content(){
        return "application/json"
    }
    
    description(){
        return "Returns a Request Object";
    }

    /**
    * returns schema of data object 
    * written in OpenAPI schema structure
    * https://spec.openapis.org/oas/v3.0.0#schema-object
    */
    schema(){
        return Request.schema({});
    }

    /**
    * build the data object
    */
    build(res,req){
        return super.build(res,req);
    }

    errors(){
        return [
            BadRequestError,
            UnprocessibleEntityError,
            InternalServerError,
        ]
    }


}

module.exports = {
    CreateRequestResource
}