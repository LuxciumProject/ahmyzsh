/** @format */

import axios from 'axios';

import DoublyLinkedNodesList from '../../Nodes/DoublyLinkedNodesList';
import Currency from './Currency';
import Altcoin from './Altcoin';

axios.defaults.baseURL = 'https://localbitcoins.com';
class CurrenciesList extends DoublyLinkedNodesList {
  public static async getCurrenciesList() {
    const apiEndPoint = '/api/currencies/';
    const currenciesList = new CurrenciesList();
    try {
      const response = await axios.get(apiEndPoint);
      const currenciesKeys = Object.keys(response.data.data.currencies);
      const currencies = response.data.data.currencies;

      currenciesKeys.forEach(key => {
        currencies[key].altcoin === false
          ? currenciesList.push(new Currency(currencies[key].name, key, false))
          : currenciesList.push(new Altcoin(currencies[key].name, key));
      });
      return currenciesList;
    } catch (error) {
      console.log(error);
    }
  }

  public head: Currency | null;

  public tail: Currency | null;

  constructor() {
    super();
    this.head = null;
    this.tail = null;
  }
}

export default CurrenciesList;
export { Altcoin, Currency, CurrenciesList };
