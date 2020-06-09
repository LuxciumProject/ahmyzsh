/** @format */
import mongoose from 'mongoose';
import getServerConfigs from '../../../../server/utils/getServerConfigs/getServerConfigs';
// import serverModes from './serverModes';
const connectDB = (() => {
  const { CONNECTION_STRING } = getServerConfigs();

  const connectDBx = (CONNECTION_STRING_ => async callback => {
    try {
      const connectionString = `${CONNECTION_STRING_}/development`;
      const DB = await mongoose.connect(
        connectionString,
        { useNewUrlParser: true }
      );
      console.log('> connectected sucessfully to the database ');

      return callback(await DB);
    } catch (connectDBError) {
      try {
        connectDBx(DB => DB.disconnect);
      } catch (disconnectError) {
        console.log(disconnectError.message);
      }
    }
  })(CONNECTION_STRING);
})();

export default connectDB;
// export {serverModes};
