/** @format */

/**  NeB_401.CORP LTEE -- © 2018 -- Benjamin Vincent Kasapoglu */
//
// Imports statements
//
import { customDBClientConnection, setConnectionURL } from '../../customDBClientConnection/customDBClientConnection';

const read = function readDB(dbName: string) {
  // Arrow function boddy goes here  . . .
  const dataconnection = setConnectionURL(customDBClientConnection);
  const client = dataconnection(dbName);
  return readOperationCallback => {
    return client((db, clientClose) => {
      //
      // Some DB opereations will occure in readOperationCallback()
      //
      return readOperationCallback({ db, clientClose });
    });
  };
};

export default read;
export { customDBClientConnection, setConnectionURL };
