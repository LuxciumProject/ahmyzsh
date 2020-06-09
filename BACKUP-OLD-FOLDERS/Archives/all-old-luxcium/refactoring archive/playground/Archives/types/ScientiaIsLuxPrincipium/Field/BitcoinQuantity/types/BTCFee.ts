/** @format */

import BitcoinQuantity from '../BitcoinQuantity';

class BTCFee extends BitcoinQuantity {
  constructor(value: number) {
    super(value);
    super.setFieldKeyName('fee_btc');
    this.value = value;
    super.setFieldValue(value);
  }

  getValue() {
    return this.value;
  }
}
export default BTCFee;
