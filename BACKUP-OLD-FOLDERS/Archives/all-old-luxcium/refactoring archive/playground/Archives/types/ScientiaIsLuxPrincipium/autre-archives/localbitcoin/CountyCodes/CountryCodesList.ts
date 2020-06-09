/** @format */

// import axios from '../../../axios/lbcConnector';
import axios from 'axios';
import DoublyLinkedNodesList from '../../../types/Nodes/DoublyLinkedNodesList';
import CountryCode from './CountryCode';

class CountryCodesList extends DoublyLinkedNodesList {
  public static async getCountryCodesList() {
    const apiEndPoint = '/api/countrycodes/';
    const countryCodesList = new CountryCodesList();
    try {
      const response = await axios.get(apiEndPoint);
      const countryCodesKeys = Object.keys(response.data.data.cc_list);
      countryCodesKeys.forEach(key => {
        countryCodesList.push(new CountryCode(key));
      });
      return countryCodesList;
    } catch (error) {
      console.log(error);
    }
  }

  public head: CountryCode | null;

  public tail: CountryCode | null;

  constructor() {
    super();
    this.head = null;
    this.tail = null;
  }
}

export default CountryCodesList;
export { CountryCode, CountryCodesList };
