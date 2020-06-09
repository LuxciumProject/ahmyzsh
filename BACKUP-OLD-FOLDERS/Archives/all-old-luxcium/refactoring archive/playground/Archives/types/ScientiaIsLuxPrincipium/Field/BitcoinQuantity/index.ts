/** @format */
import _ from 'lodash';
import assert from 'assert';
import BTCAmount from './types/BTCAmount';
import BTCAmountLessFee from './types/BTCAmountLessFee';
import BTCFinal from './types/BTCFinal';
import BTCTraded from './types/BTCTraded';
import BitcoinQuantity from './BitcoinQuantity';
import BTCFee from './types/BTCFee';

(function assertion() {
  const myBTCAmount = new BTCAmount(0.12345678);
  const myBTCAmountLessFee = new BTCAmountLessFee(0.12345678);
  const myBTCFinal = new BTCFinal(0.12345678);
  const myBTCTraded = new BTCTraded(0.12345678);
  const myBTCFee = new BTCFee(0.12345678);
  const myBitcoinQuantity = new BitcoinQuantity(0.12345678);

  const myValues = [myBTCAmount.getKeyValue()];
  assert.equal(myBTCAmount.getFieldValue(), myBitcoinQuantity.getFieldValue());
  assert.equal(myBTCAmount.getKey(), myBitcoinQuantity.getKey());
  assert.equal(myBTCAmount.getKind(), myBitcoinQuantity.getKind());
  assert.equal(myBTCAmount.getValue(), myBitcoinQuantity.getValue());
  assert.equal(myBTCAmount.toString(), myBitcoinQuantity.toString());

  myValues.push(myBTCAmount.getKeyValue());
  assert.equal(myBTCAmountLessFee.getFieldValue(), myBitcoinQuantity.getFieldValue());
  assert.equal(myBTCAmountLessFee.getKey(), myBitcoinQuantity.getKey());
  assert.equal(myBTCAmountLessFee.getKind(), myBitcoinQuantity.getKind());
  assert.equal(myBTCAmountLessFee.getValue(), myBitcoinQuantity.getValue());
  assert.equal(myBTCAmountLessFee.toString(), myBitcoinQuantity.toString());

  myValues.push(myBTCAmount.getKeyValue());
  assert.equal(myBTCFinal.getFieldValue(), myBitcoinQuantity.getFieldValue());
  assert.equal(myBTCFinal.getKey(), myBitcoinQuantity.getKey());
  assert.equal(myBTCFinal.getKind(), myBitcoinQuantity.getKind());
  assert.equal(myBTCFinal.getValue(), myBitcoinQuantity.getValue());
  assert.equal(myBTCFinal.toString(), myBitcoinQuantity.toString());

  myValues.push(myBTCAmount.getKeyValue());
  assert.equal(myBTCTraded.getFieldValue(), myBitcoinQuantity.getFieldValue());
  assert.equal(myBTCTraded.getKey(), myBitcoinQuantity.getKey());
  assert.equal(myBTCTraded.getKind(), myBitcoinQuantity.getKind());
  assert.equal(myBTCTraded.getValue(), myBitcoinQuantity.getValue());
  assert.equal(myBTCTraded.toString(), myBitcoinQuantity.toString());

  myValues.push(myBTCAmount.getKeyValue());
  assert.equal(myBTCFee.getFieldValue(), myBitcoinQuantity.getFieldValue());
  assert.equal(myBTCFee.getKey(), myBitcoinQuantity.getKey());
  assert.equal(myBTCFee.getKind(), myBitcoinQuantity.getKind());
  assert.equal(myBTCFee.getValue(), myBitcoinQuantity.getValue());
  assert.equal(myBTCFee.toString(), myBitcoinQuantity.toString());

  console.log(_.flattenDeep(myValues));
})();

export { BTCAmount, BTCAmountLessFee, BTCFinal, BTCTraded, BitcoinQuantity, BTCFee };
