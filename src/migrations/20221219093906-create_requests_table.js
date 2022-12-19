'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
    */
    await queryInterface.createTable('requests', { 
      id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      service: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      method: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      uri: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      client_ip: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      client_user_agent: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      content_type: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      authorization: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      uuid: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      headers: {
          type: Sequelize.STRING,
          allowNull: false,
      },
      body: {
          type: Sequelize.STRING,
          allowNull: true,
      },
      parameters: {
          type: Sequelize.STRING,
          allowNull: true,
      }, 
      created_at: {
        type: Sequelize.DATE,
        allowNull: false,
      }, 
      updated_at: {
        type: Sequelize.DATE,
        allowNull: false,
      }, 
      deleted_at: {
        type: Sequelize.DATE,
        allowNull: true,
      }, 

    });
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
    */
    await queryInterface.dropTable('requests');
  }
};
