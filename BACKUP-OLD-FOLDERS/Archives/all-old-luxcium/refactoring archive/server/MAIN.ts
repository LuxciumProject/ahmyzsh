/** @format */

import { START_SERVER } from './startServer';

/*
// NeB_401.CORP LTEE -- © © 2018~2019-- Benjamin Vincent Kasapoglu
*/

MAIN();
function MAIN() {
  try {
    //
    // STARTING THE SERVER ROUTINE HERE IS THE MAIN ENTRY POINT
    //
    console.info('> MAIN SERVER_START . . .');
    console.info('> ');
    console.info('> Scientia is lux principium™');
    console.info('> ');
    //
    START_SERVER();
    //
    //
    return 0;
    //
  } catch (serverStartError) {
    //
    // CATCHING SERVER ERRORS
    //
    console.error('> MAIN SERVER_START FAILED');
    console.error(serverStartError);
    //
    return process.exit(128 + 6);
    //
  }
}

export default MAIN;

/*
// NeB_401.CORP LTEE -- © © 2018~2019-- Benjamin Vincent Kasapoglu
*/
