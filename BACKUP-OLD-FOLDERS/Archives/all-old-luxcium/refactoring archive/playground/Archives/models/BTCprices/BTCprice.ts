/** @format */

import mongoose, { Schema } from 'mongoose'; //

const db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', () => {
  // we're connected!
});
const myBTCpriceSchema = new Schema({
  dataProvider: { type: String, required: [true, 'Name of data source is required'] },
  timestamp: { type: Number, required: [true, 'timestamp is required'] },
  transactionDate: { type: Date, required: [true, 'transactionDate is required'] },
  openPrice: { type: Number },
  highPrice: { type: Number },
  lowPrice: { type: Number },
  closePrice: { type: Number },
  VolumeBTC: { type: Number },
  VolumeCurrency: { type: Number },
  weightedPrice: { type: Number },
  currency: { type: String, required: [true, 'currency is required'] },
  sourceURL: { type: String },
});
const myBTCpriceModel = mongoose.model('BTCpriceSchema', myBTCpriceSchema);
export { myBTCpriceSchema, myBTCpriceModel };
