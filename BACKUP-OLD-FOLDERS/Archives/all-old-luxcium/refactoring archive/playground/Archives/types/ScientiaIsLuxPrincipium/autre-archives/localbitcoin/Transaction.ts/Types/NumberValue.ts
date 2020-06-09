/** @format */

import ValueClass from './ValueClass';

class NumberValue extends ValueClass {
  protected value: number;
  constructor(fieldName: string, value: number = 0, kind: string = 'NumberValue') {
    super(fieldName, value, kind);
    this.value = value;
    super.setValue(this.value);
  }
  public toString(positions?: number): string {
    return this.value.toFixed(positions);
  }
}

export default NumberValue;
