const { BadRequestError } = require('../../../../framework/errors/BadRequestError');
const { InternalServerError } = require('../../../../framework/errors/InternalServerError');
const { Collection } = require('../../../../framework/resources/Collection');
const { PaginatedCollection } = require('../../../../framework/resources/PaginatedCollection');
const { Request } = require('../../../models/Request');


const transform = (record) => {
    return record;
}

/**
* Sequelize models to include.
* Written in Sequelize syntax: https://sequelize.org/docs/v6/core-concepts/assocs/#basics-of-queries-involving-associations
*/
const includes = [
    
];

class ListRequestsResource extends PaginatedCollection {

    /**
    * returns HTTP Status code for the error.
    * https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
    */
    status(){
        return 200
    }
    
    content(){
        return "application/json"
    }
    
    description(){
        return "Returns a list of Request Objects";
    }
    
    /**
    * returns schema of data object 
    * written in OpenAPI schema structure
    * https://spec.openapis.org/oas/v3.0.0#schema-object
    */
    schema(){
        return Request.schema({});
    }


    build(res,req){
        // res.data = res.data.map(crop => transform(crop)); // transforms each object in list.
        return super.build(res,req);
    }

    errors(){
        return [
            BadRequestError,
            InternalServerError,
        ]
    }


}

module.exports = {
    ListRequestsResource, includes
}