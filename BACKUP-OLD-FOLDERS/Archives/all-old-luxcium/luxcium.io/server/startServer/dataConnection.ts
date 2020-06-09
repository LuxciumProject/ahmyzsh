/** @format */
import mongoose from 'mongoose';
import mongodb from 'mongodb';

import { localDBuri } from '../config/keys/index';

const dataConnection = (() => (URI: string = localDBuri) => (callback: (err: mongodb.MongoError) => void) => {
  mongoose.connect(URI, { useNewUrlParser: true }, callback);
})();
export { dataConnection };
export default dataConnection;
