/** @format */
// imports

// tslint:disable-next-line:no-submodule-imports
import colors from 'colors/safe';
import express from 'express';
import bodyParser from 'body-parser';
import getServerConfigs from '../server/config/getServerConfigs';
import luxciumRouter from '../server/routes/router';

const app = express();

const serverConfigs = getServerConfigs();
const { PORT } = serverConfigs;

let NODE_ENV: string;
serverConfigs.NODE_ENV === undefined ? (NODE_ENV = '') : (NODE_ENV = serverConfigs.NODE_ENV);

const runServerMain = (function runServer() {
  return () => {
    // add middleware parser
    app.use(bodyParser.json());
    app.use(bodyParser.urlencoded({ extended: true }));
    app.use(express.static('exports/client'));
    app.use(express.static('exports/public'));

    // add LUXCIUM_ROUTER_
    app.use('/', luxciumRouter());

    // set the port to match the required port number
    console.log(`> NODE_ENV => ${colors.green(`curently server is set to ${colors.magenta(NODE_ENV)}`)}`);
    app.listen(PORT, () =>
      console.log(`> SERVER LISTENING => ${colors.green(`server is listening on port ${colors.magenta(`${PORT}`)}`)}`)
    );
    return 0;
  };
})();

export default runServerMain;

/* NeB_401.CORP LTEE -- © 2018 -- Benjamin Vincent Kasapoglu */
