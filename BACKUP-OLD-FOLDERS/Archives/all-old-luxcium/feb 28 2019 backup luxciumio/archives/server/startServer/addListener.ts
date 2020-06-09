// /** @format */

// import { default as colors } from 'colors/safe';
// import express from 'express';

// // import { dataConnection } from './dataConnection';

// import { getServerConfigs } from '../utils/getServerConfigs/getServerConfigs';

// export const addListener = (() => (app: express.Express) => (db: any) => {
//   console.log('> ');
//   console.log('> Start Server => Listener:');
//   console.log('> ');
//   console.log('> db:void', db);
//   //
//   const { PORT, NODE_ENV } = getServerConfigs();
//   //
//   app.listen(PORT, () => {
//     console.log(
//       `>    ${colors.green(`adding listener: ${colors.magenta(' ')}`)}`,
//     );
//     console.log(
//       `>    ${colors.green(
//         `curently server is set to: ${colors.magenta(`${NODE_ENV}`)}`,
//       )}`,
//     );
//     console.log(
//       `>    ${colors.green(
//         `server is listening on port: ${colors.magenta(`${PORT}`)}`,
//       )}`,
//     );
//   });
//   //
//   return app;
//   //
// })();
