const { Client } = require("pg");



class PostgresService {


    constructor(settings){

        this.settings = settings;
        this.queries = [];
        this.watching = {};
        this.client = null;
        this.listener = null;

    }

    getSSL(){
        if(this.settings?.dialectOptions){
            return this.settings.dialectOptions;
        }
        return {};
    }

    buildClient(database, settings){
        if(!settings) settings = this.settings;
        if(!database) database = settings.database;
        const ssl = this.getSSL();

        return new Client({
            user: settings.username,
            password: settings.password,
            host: settings.host,
            database: database,
            ...ssl
        });
    }

    async buildListener(database, settings){
        if(this.listener) return;

        this.listener = this.buildClient(database, settings);
        await this.listener.connect();

        const watching = this.watching;

        this.listener.on('notification', (msg) => {
            const channel = msg.channel;
            if(channel in watching){
                const callback = watching[channel];
                callback(msg);
            }
        })
    }

    async listen({channel, callback, database, settings}){
        if(!this.listener) this.buildListener(database, settings);

        await this.listener.query(`LISTEN ${channel}`);
        this.watching[channel] = callback;
    }

    open({client, database, settings}){
        if(this.client) return this.client

        if(!client) client = this.buildClient(database,settings);
        this.client = client;
        
        return this;
    }

    async execute(config={}){
        if(!this.client) this.open(config);

        const results = [];
        await this.client.connect();

        for(let query of this.queries){
            const result = await this.client.query(query.sql,query.params);
            const output = await query.resolver(result);
            results.push(output);
            if(output === false) break;
        }

        await this.client.end();
        this.client = null;
        this.queries = [];

        return results;
    }

    query({sql, params, resolver}){
        if(!params) params = [];
        if(!resolver) resolver = () => true;

        this.queries.push({
            sql, params, resolver
        });

        return this;
    }

    findExistingDatabase(database){

        const sql = `
            SELECT true 
            WHERE EXISTS (
                SELECT FROM pg_database WHERE datname = $1::text
            )`;
        

        return this.query({
            sql,
            params: [database],
            resolver: (result) => result.rowCount >=1
        });
    }

    createCropDataVirtualTable(){
        const sql = `
            create or replace view crop_data as
            select 
                crops_zones_attributes.id as id,
                crops.label as crop,
                zones.label as zone,
                attributes.label as attribute,
                attribute_values.value as value,
                groups.label as group,
                families.common_name as family_common_name,
                families.scientific_name as family_scientific_name,
                crops.id as crop_id,
                zones.id as zone_id,
                attributes.id as attribute_id,
                attribute_values.id as attribute_value_id,
                crops_zones.id as crops_zone_id,
                groups.id as group_id,
                families.id as family_id,
                attributes.is_array as is_array,
                attribute_values.data_type as data_type
            from crops_zones_attributes
            join crops_zones on crops_zones.id = crops_zones_attributes.crops_zone_id
            join zones on zones.id = crops_zones.zone_id
            join crops on crops.id = crops_zones.crop_id
            join attribute_values on attribute_values.id = crops_zones_attributes.attribute_value_id
            join attributes on attributes.id = attribute_values.attribute_id
            join groups on groups.id = crops.group_id
            join families on families.id = crops.family_id
            order by crops.id, zones.id, attributes."label"
        `;

        return this.query({sql});
    }

    createVirtualTables(){
        return this.createCropDataVirtualTable();
    }

    createTriggers(){
        return this;
    }
    
    findNonExistingDatabase(database){

        const sql = `
            SELECT true 
            WHERE NOT EXISTS (
                SELECT FROM pg_database WHERE datname = $1::text
            )`;
        

        return this.query({
            sql,
            params: [database],
            resolver: (result) => result.rowCount >= 1
        });
    }

    createDatabase(database){

        const sql = `
            CREATE DATABASE ${database}
        `;

        return this.query({
            sql,
            params: [],
            resolver: (result) => true
        });
    }


    createDatabaseIfNotExists(database){

        return this
            .findNonExistingDatabase(database)
            .createDatabase(database);

    }

}


module.exports = {
    PostgresService
}