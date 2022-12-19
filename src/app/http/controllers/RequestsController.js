const { Request } = require('../../models/Request');
const { Controller } = require('../../../framework/controllers/Controller');
const { RecordNotFoundError } = require('../../../framework/errors/RecordNotFoundError');

class RequestsController extends Controller {

    async create(req){

        const params = req.validated.params;
        const payload = req.validated.body;

        const resource = await Request.create(payload);

        return resource;

    }

    async retrieve(req){

        const params = req.validated.params;

        const resource = await Request.findOne({
            where: {
                id: params.id
            },
        });

        if(!resource){
            throw new RecordNotFoundError(params,['record not found']);
        }

        return resource;

    }

    async list(req){

        const params = req.validated.params;
        const payload = req.validated.body;

        const {count,rows} = await Request.findAndCountAll({
            limit: params.limit,
            offset: params.offset,
        });

        return {data:rows, count};

    }

    async update(req){

        const params = req.validated.params;
        const payload = req.validated.body;

        const resource = await Request.findOne({
            where: {
                id: params.id
            },
        });

        if(!resource){
            throw new RecordNotFoundError(params,['record not found']);
        }

        await resource.update(payload);

        return resource.reload();

    }

    async delete(req){

        const params = req.validated.params;
        
        const resource = await Request.findOne({
            where: {
                id: params.id
            },
        });

        if(!resource){
            throw new RecordNotFoundError(params,['record not found']);
        }

        await resource.destroy();

        return resource;
    }

}

module.exports = {
    RequestsController
};