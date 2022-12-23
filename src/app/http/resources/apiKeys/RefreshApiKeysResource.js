const { BadRequestError } = require('../../../../framework/errors/BadRequestError');
const { InternalServerError } = require('../../../../framework/errors/InternalServerError');
const { UnprocessibleEntityError } = require('../../../../framework/errors/UnprocessibleEntityError');
const { CreateResource } = require('../../../../framework/resources/CreateResource');


class RefreshApiKeysResource extends CreateResource {

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
        return "Returns a Status of action";
    }

    /**
    * returns schema of response object
    * written in OpenAPI schema structure
    * https://spec.openapis.org/oas/v3.0.0#schema-object
    */
    wrapper(){
        return {
            type:'object',
            properties: {
                type:{type:'string'},
                status:{
                    type:'string'
                },

            }
        };
    }

    /**
    * build the data object
    */
    build(res,req){
        return {
            type:'string',
            status:res.data,
        };
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
    RefreshApiKeysResource
}