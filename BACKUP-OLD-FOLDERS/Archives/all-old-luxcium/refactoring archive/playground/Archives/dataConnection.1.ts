/** @format */

import { DataConnection, mongodb, TEST_URI } from '../server/data/connection';
// import DataConnection from '../data/connection/DataConnection';
// const dataConnection = new DataConnection(TEST_URI);

const mongoConnection = (() => (URI: string = TEST_URI) => new DataConnection(URI))();
// const MongoClient = mongodb.MongoClient;
// let _db: mongodb.Db;
// let _client: mongodb.MongoClient;
// const connect = (callback: (db: mongodb.Db) => any) => {
//   MongoClient.connect(
//     URI,
//     { useNewUrlParser: true }
//   )
//     .then(client => {
//       _client = client;
//       _db = client.db();
//       console.log(`> CONNECTION TO "${_db.databaseName.toUpperCase()}" DATABASE . . . `);
//       callback(_db);
//     })
//     .catch(err => {
//       console.log(err);
//       throw err;
//     });
// };

// const getDb = () => {
//   if (_db) {
//     console.log(`> USING "${_db.databaseName.toUpperCase()}" DATABASE . . . `);
//     return _db;
//   }
//   throw 'No database found!';
// };
// const getClient = () => {
//   if (_client) {
//     return _client;
//   }
//   throw 'No client found!';
// };
// return { connect, getDb, getClient };

export default dataConnection;
export { mongoConnection, dataConnection };

// const _URI = 'mongodb+srv://luxcium0:rubmy3-Qadruv-xyxkik@cluster0-8w34w.mongodb.net/test?retryWrites=true';

// const dataConnection = mongoConnection();

// export default dataConnection;
// export { mongoConnection, dataConnection };
