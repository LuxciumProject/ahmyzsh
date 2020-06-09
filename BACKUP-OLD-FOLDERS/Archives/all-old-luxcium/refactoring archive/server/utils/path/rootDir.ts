/** @format */

import path from 'path';

const rootDir = (() => () => {
  if (process.mainModule) {
    return path.dirname(process.mainModule.filename);
  } else {
    throw new Error('"process.mainModule" not found or undefined');
  }
})();
export { rootDir };
export default rootDir;
