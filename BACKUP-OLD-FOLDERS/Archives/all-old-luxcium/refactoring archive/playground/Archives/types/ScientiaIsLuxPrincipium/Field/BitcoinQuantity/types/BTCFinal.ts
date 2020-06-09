/** @format */

import BitcoinQuantity from '../BitcoinQuantity';

class BTCFinal extends BitcoinQuantity {
  constructor(value: number) {
    super(value);
    super.setFieldKeyName('btc_final');
    this.value = value;
    super.setFieldValue(value);
  }

  getValue() {
    return this.value;
  }
}
export default BTCFinal;
