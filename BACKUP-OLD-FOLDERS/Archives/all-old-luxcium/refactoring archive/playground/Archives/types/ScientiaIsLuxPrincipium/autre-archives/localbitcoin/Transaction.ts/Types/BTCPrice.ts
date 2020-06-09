/** @format */

import CurencyValue from './CurencyValue';

class BTCPrice extends CurencyValue {
  constructor(value: number, fieldName: string) {
    super(fieldName, value, 'BTCPrice');
  }

  public toString(positions: number = 2) {
    return super.toString(positions);
  }
}

export default BTCPrice;
