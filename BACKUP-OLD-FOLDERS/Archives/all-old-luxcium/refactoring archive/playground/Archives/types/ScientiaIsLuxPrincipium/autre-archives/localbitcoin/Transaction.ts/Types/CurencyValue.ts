/** @format */

import NumberValue from './NumberValue';
import CurrencyTypes from './CurrencyTypes';

class CurencyValue extends NumberValue {
  public curencyType: CurrencyTypes;
  constructor(
    fieldName: string,
    value: number,
    curencyType: CurrencyTypes = CurrencyTypes.UNDEFINED,
    kind: string = 'CurencyValue'
  ) {
    super(fieldName, value, kind);
    this.curencyType = curencyType;
  }
  public toString(positions: number = 2) {
    return super.toString(positions);
  }
}

export default CurencyValue;
