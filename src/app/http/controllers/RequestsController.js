const { Request } = require('../../models/Request');
const { Controller } = require('../../../framework/controllers/Controller');
const { PaginatedCollection } = require('../resources/PaginatedCollection');
const { Resource } = require('../resources/Resource');
const { CreatedResource } = require('../resources/CreatedResource');

const include = [];

class RequestsController extends Controller {

    async create(req){

        const payload = req.validated;

        payload.uuid = Request.GenerateUUID(req.clientIp, req.clientUserAgent)

        const resource = await Request.create(payload);

        return new CreatedResource({resource});

    }

    async retrieve(req){

        const payload = req.validated;

        const resource = await Request.findOne({
            where: {
                id: payload.id
            },
            include
        })

        return new Resource({resource});

    }

    async list(req){

        const payload = req.validated;

        const {count,rows} = await Request.findAndCountAll({
            limit: payload.limit,
            offset: payload.offset,
            include
        });

        
        return new PaginatedCollection({resource:rows, count});

    }

    async update(req){

        const payload = req.validated;

        const resource = await Request.findOne({
            where: {
                id: payload.id
            },
            include
        })

        await resource.update(payload);

        return new Resource({resource});

    }

    async delete(req){

        const payload = req.validated;
        
        const resource = await Request.findOne({
            where: {
                id: payload.id
            },
            include
        })

        await resource.destroy();

        return new Resource({resource});
    }

}

module.exports = {
    RequestsController
};