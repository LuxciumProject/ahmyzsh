/** @format */

/**  NeB_401.CORP LTEE -- © 2018 -- Benjamin Vincent Kasapoglu */
//
// Imports statements
//
import mongodb, { MongoClient } from 'mongodb';
import assert from 'assert';
import { ConnectionType } from '../../../../types/enums/ConnectionType/ConnectionType';
//
// Connection URL or URI without dbName included
//
const customDBClientConnection = (mongodbURL: string) => {
  //
  // Create a new MongoClient
  //
  const client = new MongoClient(mongodbURL);
  //
  // Database Name, abd call back to excute stuff
  //
  return (dbName: string) =>
    //
    // Return payload Function that recive a callback as argument
    //
    (connectionCallback: (db: mongodb.Db, clientClose: () => void) => void) => {
      //
      // Use connect method to connect to the Server
      //
      client.connect(connectErro => {
        //
        // validating if connection was succesfull and continuing
        //
        assert.equal(null, connectErro);
        console.log('***> customDBClientConnection > Connected successfully to database server');
        //
        // execution of payload callback funtion with client connected to the specified db name
        //
        const db = client.db(dbName);
        return connectionCallback(db, () => {
          //
          // Closing client connection to database server
          //
          console.log('***> customDBClientConnection >  Closing client connection to database server');
          return client.close(() => console.log('***> customDBClientConnection >  Client connection closed'));
          //
          //
          //
        }); //
      }); //
    }; // //
}; //
//
// export default function customDBClientConnection
//
export default customDBClientConnection;
//
//
//
function setConnectionURL(
  connectionToSetURLTo: (
    mongodbURL: string
  ) => (dbName: string) => (connectionCallback: (db: mongodb.Db, clientClose: () => void) => void) => void,
  uriProvided: string | ConnectionType | null = null
) {
  const uri = 'mongodb://localhost:21017';
  if (uriProvided === null) return connectionToSetURLTo(uri); // to by dynamicaly applied
  return connectionToSetURLTo(uriProvided);
}
//
// Exporting the rest as usual
//
export { setConnectionURL, assert, MongoClient, mongodb, customDBClientConnection, ConnectionType };
//
//
/**  NeB_401.CORP LTEE -- © 2018 -- Benjamin Vincent Kasapoglu */
