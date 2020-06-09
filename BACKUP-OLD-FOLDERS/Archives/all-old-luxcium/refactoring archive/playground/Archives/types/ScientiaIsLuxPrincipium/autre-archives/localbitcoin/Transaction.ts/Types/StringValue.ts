/** @format */

import ValueClass from './ValueClass';

class StringValue extends ValueClass {
  protected value: string;
  constructor(fieldName: string, value: string = '', kind: string = 'StringValue') {
    super(fieldName, value, kind);
    this.value = value;
    super.setValue(this.value);
  }
  public toString(): string {
    return this.value.toString();
  }
}

export default StringValue;
