const { ValidatorService } = require('../services/validation/ValidatorService');
const { Provider } = require('../../framework/providers/Provider');

class ValidatorProvider extends Provider {

    static async register(){
        
        return true;
    }

    static factory(){
        return ValidatorService;
    }
}

module.exports = {
    ValidatorProvider
}

