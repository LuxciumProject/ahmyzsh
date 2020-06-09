/** @format */

import express from 'express';
import colors from 'colors/safe';
// import { mongodb } from './dataConnection';

import { getServerConfigs } from '../utils/getServerConfigs/getServerConfigs';

const addListener = (() => (app: express.Express) => (db: any /*mongodb.Db*/) => {
  //
  console.log('> ');
  console.log(`> Start Server => Listener:`);
  console.log('> ');
  //
  const { PORT, NODE_ENV } = getServerConfigs();
  //
  app.listen(PORT, () => {
    console.log(`>    ${colors.green(`adding listener: ${colors.magenta(' ')}`)}`);
    console.log(`>    ${colors.green(`curently server is set to: ${colors.magenta(`${NODE_ENV}`)}`)}`);
    console.log(`>    ${colors.green(`server is listening on port: ${colors.magenta(`${PORT}`)}`)}`);
  });
  //
  return app;
  //
})();

export { addListener };
export default addListener;
