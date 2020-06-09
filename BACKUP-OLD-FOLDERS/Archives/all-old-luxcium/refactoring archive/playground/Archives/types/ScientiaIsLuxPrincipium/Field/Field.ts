/** @format */
import ScientiaIsLuxPrincipium from '../ScientiaIsLuxPrincipium';

class Field extends ScientiaIsLuxPrincipium {
  private fieldKeyName: string;

  private fieldValue: any;

  constructor(kind: string = 'Field') {
    super(kind);
    this.fieldKeyName = 'generic_field';
  }

  protected setFieldKeyName(fieldKeyName: string) {
    this.fieldKeyName = fieldKeyName;
  }

  protected setFieldValue(value: any): void {
    this.fieldValue = value;
  }

  public getKey() {
    this.fieldKeyName;
  }

  public getFieldValue(): any {
    return this.fieldValue;
  }

  public getValue(): any {
    return null;
  }

  public getKeyValue() {
    return { [this.fieldKeyName]: this.fieldValue };
  }
}
export default Field;
