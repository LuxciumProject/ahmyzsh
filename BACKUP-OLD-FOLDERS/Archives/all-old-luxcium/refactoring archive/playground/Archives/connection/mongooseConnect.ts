/** @format */

import mongoose from 'mongoose';

const TEST_URI = 'mongodb+srv://luxcium0:rubmy3-Qadruv-xyxkik@cluster0-8w34w.mongodb.net/test?retryWrites=true';

const mongooseConnect = (() => (URI: string = TEST_URI) => async (callback: (result: typeof mongoose) => any) => {
  try {
    const result = await mongoose.connect(URI);
    return await callback(result);
  } catch (error) {
    console.log('Error in mongooseConnect');
  }
})();
export { mongooseConnect, mongoose };
export default mongooseConnect;
