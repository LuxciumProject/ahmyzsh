/** @format */

import CurencyValue from './CurencyValue';

class FiatAmount extends CurencyValue {
  constructor(value: number) {
    super(value);
  }
  public toString(positions: number = 2) {
    return super.toString(positions);
  }
}

export default FiatAmount;
