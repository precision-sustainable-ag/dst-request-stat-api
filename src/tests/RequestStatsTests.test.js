// const Setup = require('./Setup');
const request = require("supertest");
const { It, Expect } = require('./utilities');
const { JwtService } = require('../app/services/jwt/JwtService');



describe("GET /requests", () => {
    const app = process.testSetup.app;
    
    const req = () => new Promise((resolve, reject) => {
        JwtService.encode({scopes:['stats_write','stats_read']}).then(AUTH_TOKEN => {
            resolve(request(app).get(`/requests`).set('Authorization', AUTH_TOKEN))
        })
    });

    It.ShouldReturnStatus(req,200);

    It.ShouldReturnObjectType(req,'array');

});

describe("POST /requests", () => {
    const app = process.testSetup.app;
    const payload = {
        service: "TEST SERVICE",
        method: "TPOST",
        uri: "/endpoint",
        clientIp: "127.0.0.1",
        clientUserAgent: "ua-string",
        contentType: "content-string",
        authorization: "might be very large",
        uuid: "string",
        headers: "could be very large escaped json object",
        body: "could be very large escaped json object",
        parameters: "could be very large escaped json object"
    }
    
    let created;

    const req = () => new Promise((resolve, reject) => {
        JwtService.encode({scopes:['stats_write','stats_read']}).then(async AUTH_TOKEN => {
            if(created) return resolve(created);
            console.log('token',AUTH_TOKEN)
            created = await request(app).post(`/requests`).set('Authorization', AUTH_TOKEN).send(payload)
            return resolve(created);
        })
    });

    It.ShouldReturnStatus(req,201);

    It.ShouldReturnObjectType(req,'object');



    it("should have items matching Request Model object", async () => {
        await req().then(res => {
            const obj = res.body.data;
            expect(obj instanceof Object);

            expect(obj.id).toBeTruthy();
            expect(obj.createdAt).toBeTruthy();

            for(let [key, val] of Object.entries(payload)){
                expect(obj[key]).toBe(val);
            }
        });
    });

});

describe("GET /requests/{id}", () => {
    const app = process.testSetup.app;
    const payload = {
        service: "TEST SERVICE",
        method: "TPOST",
        uri: "/endpoint",
        clientIp: "127.0.0.1",
        clientUserAgent: "ua-string",
        contentType: "content-string",
        authorization: "might be very large",
        uuid: "string",
        headers: "could be very large escaped json object",
        body: "could be very large escaped json object",
        parameters: "could be very large escaped json object"
    }
    
    let created;
    let retrieved;

    const req = () => new Promise((resolve, reject) => {
        JwtService.encode({scopes:['stats_write','stats_read']}).then(async AUTH_TOKEN => {
            if(retrieved) return resolve(retrieved);
            created = await request(app).post(`/requests`).set('Authorization', AUTH_TOKEN).send(payload)
            retrieved = await request(app).get(`/requests/${created.body.data.id}`).set('Authorization', AUTH_TOKEN)
            return resolve(retrieved);
        })
    });

    It.ShouldReturnStatus(req,200);

    It.ShouldReturnObjectType(req,'object');

    it("should have items matching Request Model object", async () => {
        await req().then(res => {
            const obj = res.body.data;
            expect(obj instanceof Object);

            expect(obj.id).toBeTruthy();
            expect(obj.createdAt).toBeTruthy();

            for(let [key, val] of Object.entries(payload)){
                expect(obj[key]).toBe(val);
            }
        });
    });

});
