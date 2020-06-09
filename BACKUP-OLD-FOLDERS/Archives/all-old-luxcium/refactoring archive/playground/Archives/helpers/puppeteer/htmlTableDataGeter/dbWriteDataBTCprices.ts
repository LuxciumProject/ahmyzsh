/** @format */

import {MongoClient} from 'mongodb';

const DB_NAME = 'BTCprices';
const dbWrite = collection => {
  console.log('> dbWriteDataBTCprices> dbWrite in collection:', collection);
  return (dbName => {
    console.log('> dbWriteDataBTCprices> dbWrite in dbName:', dbName);
    return async dataObjectToInsert => {
      try {
        MongoClient.connect(
          'mongodb://localhost:27017/dataScraping',
          {useNewUrlParser: true},
          (connectionErr, client) => {
            if (!connectionErr) {
              console.log('> Connection sucessful MongoClient');
              const db = client.db(dbName);
              db.collection(collection).insertMany(dataObjectToInsert, (insertErr, result) => {
                if (insertErr) {
                  console.log('> unable to insert into MongoClient', insertErr.message);
                  return;
                }
                console.log(`> Insert sucessful in ${collection} `);
                return;
              });

              client.close();
              console.log('> Connection terminated to MongoClient');
              return;
            }
            console.log('> dbWriteDataBTCprices> unable to connect MongoClient', connectionErr.message);
            return;
          }
        );
      } catch (error) {
        console.log('> dbWriteDataBTCprices> unable to continue the opperations in MongoClient', error.message);
        return;
      }
      console.log(
        `> dbWriteDataBTCprices> insertion of <dataObjectToInsert> into db: ${dbName} within collection: ${collection} !!!collection`
      );
      return;
    };
  })(DB_NAME);
};
export default dbWrite;
