/** @format */

import Field from '../../../Field/Field';

class ValueClass extends Field {
  protected value: string | number;
  constructor(fieldName: string, value: string | number, kind: string = 'ValueClass') {
    super(fieldName, kind);
    this.value = value;
  }
  protected getValue() {
    return this.value;
  }
  protected setValue(value: string | number) {
    this.value = value;
  }
}

export default ValueClass;
