/** @format */
import Currency from './Currency';

class Altcoin extends Currency {
  constructor(code: string, name: string) {
    super(name, code, true);
  }
}

export default Altcoin;
