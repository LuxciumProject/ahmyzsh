/** @format */

import BitcoinQuantity from '../BitcoinQuantity';

class BTCAmountLessFee extends BitcoinQuantity {
  constructor(value: number) {
    super(value);
    super.setFieldKeyName('btc_amount_less_fee');
    this.value = value;
    super.setFieldValue(value);
  }

  getValue() {
    return this.value;
  }
}
export default BTCAmountLessFee;
