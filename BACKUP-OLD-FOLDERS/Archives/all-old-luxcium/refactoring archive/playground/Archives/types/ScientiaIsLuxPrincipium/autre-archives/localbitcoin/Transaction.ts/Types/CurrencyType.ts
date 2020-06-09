/** @format */

import ScientiaIsLuxPrincipium from '../../../ScientiaIsLuxPrincipium/ScientiaIsLuxPrincipium';
import CurrencyTypes from './CurrencyTypes';
class CurrencyType extends ScientiaIsLuxPrincipium {
  private value: CurrencyTypes;
  constructor(value: CurrencyTypes) {
    super();
    this.value = value;
  }
  public toString(): string {
    return this.value.toString();
  }
}
export default CurrencyType;
