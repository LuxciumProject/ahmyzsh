/** @format */
import Field from '../Field';

class BitcoinQuantity extends Field {
  protected value: number;

  constructor(value: number) {
    super('BitcoinQuantity');
    super.setFieldKeyName('bitcoin_quantity');
    this.value = value;
    super.setFieldValue(value);
  }

  public getValue(): number {
    return this.value;
  }

  public toString(possitions: number = 8): string {
    return this.value.toFixed(possitions);
  }
}
export default BitcoinQuantity;
