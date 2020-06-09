/** @format */

import Field from '../../../Field/Field';

class Id extends ValueClass {
  constructor(id: string | number) {
    super(id, 'id');
  }
  public toString(): string {
    const value: string | number = super.getValue();
    if (typeof value === 'number') {
      return value.toFixed();
    } else {
      return value.toString();
    }
  }
}

export default Id;
