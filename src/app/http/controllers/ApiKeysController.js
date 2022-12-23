const { Controller } = require('../../../framework/controllers/Controller');
const { RecordNotFoundError } = require('../../../framework/errors/RecordNotFoundError');
const { KeyAuthProvider } = require('../../providers/KeyAuthProvider');
const { DataAuthService } = require('../../services/apis/DataAuthService');

class ApiKeysController extends Controller {

    async refreshApiKeys(req){

        const params = req.validated.params;
        const payload = req.validated.body;

        const refreshed = await KeyAuthProvider.Refresh();

        return refreshed ? 'success' : 'failed';

    }

    async refreshAuthorization(){
        const refreshed = await DataAuthService.refreshAuthorization();

        return refreshed?.credentials?.id ? 'success' : 'failed';
    }
}

module.exports = {
    ApiKeysController
};