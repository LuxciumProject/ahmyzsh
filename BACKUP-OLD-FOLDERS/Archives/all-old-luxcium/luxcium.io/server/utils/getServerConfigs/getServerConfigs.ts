/** @format */
// import { ConnectionType } from '../../types/types';

const getServerConfigs = () =>
  (function serverConfigs() {
    const PORT = process.env.PORT || 5050;
    const CONNECTION_STRING = process.env.MONGODB_URI || '';
    const NODE_ENV = process.env.NODE_ENV|| '';

    const configs = {
      PORT,
      NODE_ENV,
      CONNECTION_STRING,
      // SERVER_MODES,
    };
    return configs;
  })();

export default getServerConfigs;
export { getServerConfigs };
// export { ConnectionType, getServerConfigs };
