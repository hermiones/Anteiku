const { database } = require("./helpers");

const utils = {};

/**
 * try to get any object
 */
utils.retrive = async (tableName, id) => {
    const obj = await database
        .table(tableName)
        .filter({ id })
        .get();

    if (obj) {
        return obj;
    }

    return null;
}

/**
 * update any object
 * ex: update quantity, price and short_desc of product that has id = 1
 * tableName: products
 * id: 1
 * body: {
    "quantity": 90,
    "price": 120,
    "short_desc": "French Fries"
  }
 */

utils.update = (tableName, id, body) => {
    return database
        .table(tableName)
        .filter({ id })
        .update(body);
}

utils.insert = (tableName, body) => {
    return database
        .table(tableName)
        .insert(body);
}

module.exports = utils;
