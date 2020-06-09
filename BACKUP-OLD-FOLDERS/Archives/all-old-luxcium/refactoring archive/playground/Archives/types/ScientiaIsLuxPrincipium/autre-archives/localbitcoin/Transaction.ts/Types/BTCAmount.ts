/** @format */

import CurencyValue from './CurencyValue';

class BTCAmount extends CurencyValue {
  constructor(fieldName: string, value: number) {
    super(fieldName, value, 'BTCAmount');
  }
  public toString(positions: number = 8) {
    return super.toString(positions);
  }
}

export default BTCAmount;
