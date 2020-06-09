// /** @format */

// import express from 'express';

// import { luxciumRouter } from '../routes/router';
// // import { dataConnection, mongodb } from './dataConnection';

// export const addRoutes = (() => (app: express.Express) => (db: any) => {
//   console.log('> ');
//   console.log('> Start Server => Add Routes: ');
//   console.log('> ');
//   console.log('> db:void', db);
//   //
//   // app.use('/testdb', (req, res) => {
//   //   const DB = dataConnection.getDb();
//   //   DB.collection('testingOneTwo')
//   //     .insertOne({ time: Date.now(), payload: JSON.stringify(app.mountpath) })
//   //     .then(result => {
//   //       console.log(JSON.stringify(result.insertedId));
//   //       res.json(result);
//   //     })
//   //     .catch(err => {
//   //       console.log(err);
//   //       throw err;
//   //     });
//   // });

//   app.use('/', luxciumRouter());
//   //
//   //
//   return app;
//   //
//   //
// })();
