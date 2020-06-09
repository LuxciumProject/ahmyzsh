/** @format */

import express from 'express';
import bodyParser from 'body-parser';
import session from 'express-session';
import colors from 'colors/safe';
// import mongodb from 'mongodb';

const addMiddleware = (() => (app: express.Express) => (db: any /*mongodb.Db*/) => {
  console.log('> ');
  console.log(`> Start Server => Middlewares:`);
  console.log('> ');
  //
  //
  app.use(bodyParser.json());
  console.log(`>    ${colors.green(`adding: ${colors.magenta('JSON parser middleware')}`)}`);
  //
  //
  app.use(bodyParser.urlencoded({ extended: true }));
  console.log(`>    ${colors.green(`adding: ${colors.magenta('Body parser middleware')}`)}`);
  //
  //
  app.use(session({ secret: 'will need a long string in production', resave: false, saveUninitialized: false }));
  console.log(`>    ${colors.green(`adding: ${colors.magenta('Session middleware')}`)}`);
  //
  //
  app.use(express.static('exports/client'));
  console.log(`>    ${colors.green(`adding: ${colors.magenta('Static folder exports/client')}`)}`);
  //
  //
  app.use(express.static('exports/public'));
  console.log(`>    ${colors.green(`adding: ${colors.magenta('Static folder exports/public')}`)}`);
  //
  //
  return app;
  //
  //
})();

export { addMiddleware };
export default addMiddleware;
