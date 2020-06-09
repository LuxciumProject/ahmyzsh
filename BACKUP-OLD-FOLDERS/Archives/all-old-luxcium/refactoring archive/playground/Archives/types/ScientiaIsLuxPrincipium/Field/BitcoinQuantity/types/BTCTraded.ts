/** @format */

import BitcoinQuantity from '../BitcoinQuantity';

class BTCTraded extends BitcoinQuantity {
  constructor(value: number) {
    super(value);
    super.setFieldKeyName('btc_traded');
    this.value = value;
    super.setFieldValue(value);
  }

  getValue() {
    return this.value;
  }
}
export default BTCTraded;
