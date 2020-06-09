/** @format */

import React, { Component } from 'react';
import axios from 'axios';
import DropSelect from '../../components/LBC/DropSelect/DropSelect';

axios.defaults.baseURL = 'https://localbitcoins.com';

export interface ILBCAxiosHandelerProps {
  itHasATypeString: string;
}

export default class LBCAxiosHandeler extends Component<ILBCAxiosHandelerProps, any> {
  public drpTypesLBC = {
    countrycode: { type: 'countrycode', apiEndpoint: '/api/countrycodes/' },
    currency: { type: 'currency', apiEndpoint: '/api/payment_methods/	' },
    payment_method: { type: 'payment_method', apiEndpoint: '/api/currencies/' },
  };

  public state = {};

  public componentDidMount() {
    axios.get(this.drpTypesLBC.payment_method.apiEndpoint).then(response => console.log(response));
  }

  public render() {
    return (
      <div>
        {' '}
        <DropSelect name="" />{' '}
      </div>
    );
  }
}

/*



Public Market Data
Requires Authentication	Endpoint	HTTP method	Permissions	Function
/buy-bitcoins-with-cash/{location_id}/{location_slug}/.json	-	-	Returns local buy advertisements.
/sell-bitcoins-for-cash/{location_id}/{location_slug}/.json	-	-	Returns local sell advertisements.
/buy-bitcoins-online/{countrycode}/{country_name}/{payment_method}/.json	-	-
/buy-bitcoins-online/{countrycode}/{country_name}/.json	-	-
/buy-bitcoins-online/{currency}/{payment_method}/.json	-	-
/buy-bitcoins-online/{currency}/.json	-	-
/buy-bitcoins-online/{payment_method}/.json	-	-
/buy-bitcoins-online/.json	-	-
/sell-bitcoins-online/{countrycode}/{country_name}/{payment_method}/.json	-	-
/sell-bitcoins-online/{countrycode}/{country_name}/.json	-	-
/sell-bitcoins-online/{currency}/{payment_method}/.json	-	-
/sell-bitcoins-online/{currency}/.json	-	-
/sell-bitcoins-online/{payment_method}/.json	-	-
/sell-bitcoins-online/.json	-	-
/bitcoinaverage/ticker-all-currencies/	-	-	Returns a JSON feed of average Bitcoin prices on LocalBitcoins for all currencies.
/bitcoincharts/{currency}/trades.json	-	-	Returns a list of completed trades with amount and FIAT price.
/bitcoincharts/{currency}/orderbook.json	-	-	Returns a list of online buy and sell advertisements.

Advertisements section :

/api/payment_methods/	GET	-	Returns a list of valid payment methods.
/api/payment_methods/{countrycode}/	GET	-	Returns a list of valid payment methods for a specific country code.
/api/countrycodes/	GET	-	List of valid countrycodes for LocalBitcoins.
/api/currencies/	GET	-	List of valid and recognized fiat currencies for LocalBitcoins.
/api/places/	GET	-	Looks up places near lat, lon and provides full URLs to buy and sell listings.

*/
