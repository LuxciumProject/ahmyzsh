/** @format */

import mongodb from 'mongodb';

const TEST_URI = 'mongodb+srv://luxcium0:rubmy3-Qadruv-xyxkik@cluster0-8w34w.mongodb.net/test?retryWrites=true';

const mongoConnect = class {
  //
  //
  //
  public isConnected: boolean;
  //
  //
  //
  private _db: mongodb.Db | null;
  private _client: mongodb.MongoClient | null;
  private _useNewUrlParser: { useNewUrlParser: true };
  private _URI: string;
  //
  //
  //
  constructor(URI: string = TEST_URI) {
    //
    //
    this._URI = URI;
    this._client = null;
    this._db = null;
    this._useNewUrlParser = { useNewUrlParser: true };
    this.isConnected = false;
    //
    //
  } /* constructor end here */
  //
  //
  //
  public connect(callback: (db: mongodb.Db) => any) {
    mongodb.MongoClient.connect(
      this._URI,
      this._useNewUrlParser
    )
      .then(client => {
        this._client = client;
        this._db = client.db();
        console.log(`> CONNECTION TO "${this._db.databaseName.toUpperCase()}" DATABASE . . . `);
        this.isConnected = true;
        callback(this._db);
      })
      .catch(err => {
        console.log(err);
        //throw err;
      });
  }
  //
  //
  //
  public getDb(): mongodb.Db {
    if (this._db) {
      console.log(`> USING "${this._db.databaseName.toUpperCase()}" DATABASE . . . `);
      return this._db;
    }
    console.error(`>!!!> ERROR : "No database found!"`);
    throw 'No database found!';
  }
  //
  //
  //
  public getClient(): mongodb.MongoClient {
    if (this._client) {
      return this._client;
    }
    console.error(`>!!!> ERROR : "No DB client found!"`);
    throw 'No DB client found!';
  }
};

const MongoDB = mongodb.Db;
const MongoClient = mongodb.MongoClient;

export default mongoConnect;
export { mongoConnect, mongodb, TEST_URI, MongoDB, MongoClient };
