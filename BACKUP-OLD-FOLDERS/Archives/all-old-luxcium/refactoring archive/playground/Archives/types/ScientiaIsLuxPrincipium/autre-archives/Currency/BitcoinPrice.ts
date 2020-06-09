/** @format */
import Field from '../Field/Field';

class BitcoinQuantity extends Field {
  protected value: number;

  constructor(name: string = 'bitcoin_quantity', value: number) {
    super(name, 'BitcoinQuantity');
    this.value = value;
    this.setFieldValue(value);
  }

  public toString(possitions: number = 8): string {
    return this.value.toFixed(possitions);
  }
}

class BTCAmount extends BitcoinQuantity {
  constructor(value: number) {
    super('btc_amount', value);
  }

  getValue() {
    return this.value;
  }
}
class BTCTraded extends BitcoinQuantity {
  constructor(value: number) {
    super('btc_traded', value);
  }

  getValue() {
    return this.value;
  }
}
class BTCFee extends BitcoinQuantity {
  constructor(value: number) {
    super('fee_btc', value);
  }

  getValue() {
    return this.value;
  }
}
class BTCAmountLessFee extends BitcoinQuantity {
  constructor(value: number) {
    super('btc_amoun', value);
  }

  getValue() {
    return this.value;
  }
}
class BTCFinal extends BitcoinQuantity {
  constructor(value: number) {
    super('btc_final', value);
  }

  getValue() {
    return this.value;
  }
}

export default BitcoinQuantity;

export { BTCAmount, BTCTraded, BTCFee, BTCAmountLessFee, BTCFinal };
/*
('btc_amount') BTCAmount
('btc_traded') BTCAmount
('fee_btc') BTCAmount
('btc_amount_less_fee') BTCAmount
('btc_final') BTCAmount
*/
