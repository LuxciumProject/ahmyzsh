/** @format */

/**  NeB_401.CORP LTEE -- © 2018 -- Benjamin Vincent Kasapoglu */
//
// Imports statements
//
import {
  customDBClientConnection,
  setConnectionURL,
  ConnectionType,
} from '../../customDBClientConnection/customDBClientConnection';

const create = function readDB(dbName: string, connectionType: ConnectionType) {
  // Arrow function boddy goes here  . . .
  const dataconnection = setConnectionURL(customDBClientConnection, connectionType);
  const client = dataconnection(dbName);
  return createOperationCallback => {
    return client((db, clientClose) => {
      //
      // Some DB opereations will occure in createOperationCallback()
      //
      return createOperationCallback({ db, clientClose });
    });
  };
};

export default create;
export { customDBClientConnection, setConnectionURL, ConnectionType };
