/** @format */

import express from 'express';

const app = express();

app.listen(process.env.PORT || 5050, () => {
  console.log('working now', process.env.PORT);
});
//     );
// });
//

// /** @format */

// import { startServer } from './startServer';

// /*
// // NeB_401.CORP LTEE -- © © 2018~2019-- Benjamin Vincent Kasapoglu
// */

// main();
// function main() {
//   try {
//     //
//     // STARTING THE SERVER ROUTINE HERE IS THE MAIN ENTRY POINT
//     //
//     console.info('> MAIN SERVER_START . . .');
//     console.info('> ');
//     console.info('> Scientia is lux principium™');
//     console.info('> ');
//     //
//     startServer();
//     //
//     //
//     return 0;
//     //
//   } catch (serverStartError) {
//     //
//     // CATCHING SERVER ERRORS
//     //
//     console.error('> MAIN SERVER_START FAILED');
//     console.error(serverStartError);
//     //
//     return process.exit(128 + 6);
//     //
//   }
// }

// export default main;

// /*
// // NeB_401.CORP LTEE -- © © 2018~2019-- Benjamin Vincent Kasapoglu
// */;
