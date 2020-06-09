/** @format */

import Field from '../../../Field/Field';
import TradeTypes from './TradeTypes';

class TradeType extends Field {
  private value: TradeTypes;
  constructor(value: TradeTypes) {
    super('trade_type', 'TradeType');
    this.value = value;
    this.fieldValue = this.value;
  }
  public toString(): string {
    return this.value.toString();
  }
}

export default TradeType;
export { TradeType, TradeTypes };
