const csv = require('csvtojson');
const assert = require('assert');
// const mongoose = require('mongoose');
const MongoClient = require('mongodb').MongoClient;
// const mongoDB = require('mongoDB');
const url = 'mongodb://localhost:27017/';
const dbName = 'localbitcoinsTrades';
const collectionName = 'contactsAll';
const csvFilePath = './imports/contacts_all.csv';

const client = new MongoClient(url);
client.connect((connectError, client) => {
  assert.equal(null, connectError);
  console.log('Connected correctly to server');

  const db = client.db(dbName);

  csv()
    .fromFile(csvFilePath)
    .then(async jsonObj => {
      // Insert multiple documents
      db.collection(collectionName).insertMany(
        jsonObj,
        (insertManyError, r) => {
          assert.equal(null, insertManyError);
          // assert.equal(2, r.insertedCount);
          console.log(r);
          client.close();
        }
      );
    });
});

/** csv file
a,b,c
1,2,3
4,5,6


    .fromFile(csvFilePath)
    .then((jsonObj) => {
        console.log(jsonObj);
        
         * [
         * 	{a:"1", b:"2", c:"3"},
         * 	{a:"4", b:"5". c:"6"}
         * ]
         
    })

// Async / await usage
const jsonArray = await csv().fromFile(csvFilePath);

*/
