/** @format */
import Node from '../../../types/Nodes/Node'; // extends
import CountriesList from '../CountyCodes/CountryCodesList';
import CurrenciesList from '../Currencies/CurrenciesList';

class PaymentMethod extends Node {
  public name: string;

  public code: string;

  public method: string;

  public currencies: CurrenciesList;

  public countries: CountriesList;

  constructor(
    name: string,
    code: string,
    method: string,
    currencies: CurrenciesList = new CurrenciesList(),
    countries: CountriesList = new CountriesList()
  ) {
    super();
    this.name = name;
    this.code = code;
    this.method = method;
    this.currencies = currencies;
    this.countries = countries;
    this.value = this;
  }
}

export default PaymentMethod;
