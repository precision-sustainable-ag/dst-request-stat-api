const { PaginatedRequest } = require('../PaginatedRequest');

class ListRequestsRequest extends PaginatedRequest {

    /**
     * For more information please check ValidatorJS documentation.
     * https://github.com/mikeerickson/validatorjs
     */
    rules(){
        return {
        }
    }
    
    // return true to by-pass need for authorization
    authorized(){
        return false;
    }
}

module.exports =  {
    ListRequestsRequest
};


