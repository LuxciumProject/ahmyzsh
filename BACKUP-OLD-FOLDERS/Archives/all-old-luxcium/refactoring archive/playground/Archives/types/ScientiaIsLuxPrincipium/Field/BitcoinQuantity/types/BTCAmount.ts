/** @format */

import BitcoinQuantity from '../BitcoinQuantity';

// btc_amount
class BTCAmount extends BitcoinQuantity {
  constructor(value: number) {
    super(value);
    super.setFieldKeyName('btc_amount');
    this.value = value;
    super.setFieldValue(value);
  }

  getValue() {
    return this.value;
  }
}
export default BTCAmount;
