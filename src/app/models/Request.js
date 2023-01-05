const { DataTypes } = require('sequelize');
const { Model } = require('../../framework/models/Model')
const crypto = require('crypto');

/**
 * For more information on sequelize attributes & options
 * please visit https://sequelize.org/docs/v6/core-concepts/model-basics/#column-options
 */
class Request extends Model {

    static GenerateUUID(ip,userAgent) {
        return crypto.createHash('sha256').update(`${ip}${userAgent}`).digest('base64');
    }


    /**
     * For more information on sequelize attributes & options
     * please visit https://sequelize.org/docs/v6/core-concepts/model-basics/#column-options
     */
    static attributes(){
        return {
            // Model attributes are defined here
            id: {
                type: DataTypes.INTEGER,
                allowNull: false,
                primaryKey: true,
                autoIncrement: true
            },
            service: {
                type: DataTypes.STRING,
                allowNull: false,
            },
            method: {
                type: DataTypes.STRING,
                allowNull: false,
            },
            uri: {
                type: DataTypes.STRING,
                allowNull: false,
            },
            clientIp: {
                type: DataTypes.STRING,
                allowNull: false,
            },
            clientUserAgent: {
                type: DataTypes.TEXT,
                allowNull: false,
            },
            contentType: {
                type: DataTypes.STRING,
                allowNull: false,
            },
            authorization: {
                type: DataTypes.TEXT,
                allowNull: false,
            },
            uuid: {
                type: DataTypes.STRING,
                allowNull: false,
            },
            headers: {
                type: DataTypes.TEXT,
                allowNull: false,
            },
            body: {
                type: DataTypes.TEXT,
                allowNull: true,
            },
            parameters: {
                type: DataTypes.TEXT,
                allowNull: true,
            },
        }
    }

    

    /** 
     * leave null for sequelize to infer 
     * the table name as a pluralized snake cased version of the class name:
     * example:
     *  Class Post will look for table posts
     *  Class CommonCategory will look for table common_categories
     */ 
     static table(){
        return null
    }

    /**
     * Generally speaking you will not need to add any aditional options
     * that are not already set in the base model. 
     * The primary reason to add options here is to override base model options
     * or to add additional column indexes.
     * 
     * For more information on sequelize attributes & options
     * please visit https://sequelize.org/docs/v6/core-concepts/model-basics/#column-options
     */
    static options(){
        return {}
    }


    /**
     * Visit sequlize docs for list of available hooks and their firing order.
     * https://sequelize.org/docs/v6/other-topics/hooks/#available-hooks
     */
    static hooks(){
        return {

        }
    }


}

module.exports =  {
    Request
};


