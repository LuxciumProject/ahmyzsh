/** @format */

import express from 'express';

import { addMiddleware } from './addMiddleweare';
import { addRoutes } from './addRoutes';
import { addListener } from './addListener';
import { dataConnection } from './dataConnection';

/*
// NeB_401.CORP LTEE -- © © 2018~2019-- Benjamin Vincent Kasapoglu
*/
//
//
const START_SERVER = (app => () => {
  //
  //
  // add middlewares
  addMiddleware(app)('');
  //
  //
  // add LUXCIUM_ROUTER
  addRoutes(app)('');
  //
  //
  //
  dataConnection()(dataConnectionError => {
    if (!dataConnectionError) {
      //
      //
      // start listening on port specified in the cofiguration ...
      addListener(app)('');
    } else {
      console.error(dataConnectionError.message);
    }
  });
  //
  //
  //
})(express());

export { START_SERVER };
export default START_SERVER;

/*
// NeB_401.CORP LTEE -- © 2018~2019 -- Benjamin Vincent Kasapoglu
*/
