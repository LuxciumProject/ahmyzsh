/** @format */
import lbcConnector from '../../../axios/lbcConnector';

import paymentMethod from '../../../types/localbitcoin/PaymentMethod/PaymentMethod';
// import myLBCConnector from '../myLBCConnector/myLBCConnector';
// tslint:disable-next-line:variable-name
const PublicMarketData = (myLBCConnector =>
  class {
    public lbcConnector: (endpoint: string, parmsURLencoded: string) => Promise<any>;

    //   // /buy-bitcoins-online/
    constructor() {
      this.lbcConnector = myLBCConnector;
    }

    //   // public buyBitcoinsOnline1(countrycode, countryName, paymentMethod) {
    //   //   // {countrycode}/{country_name}/{payment_method}
    //   // }

    //   // public buyBitcoinsOnline2(countrycode, countryName, paymentMethod) {
    //   //   // {currency}/{payment_method}
    //   // }

    //   // public buyBitcoinsOnline3(countrycode, countryName, paymentMethod) {
    //   //   // {countrycode}/{country_name}
    //   // }

    //   // public buyBitcoinsOnline4(countrycode, countryName, paymentMethod) {
    //   //   // {currency}/{payment_method}
    //   // }

    //   // public buyBitcoinsOnline5(countrycode, countryName, paymentMethod) {
    //   //   // {currency}
    //   // }

    // {payment_method}
    public async getBitcoinsOnlinebypaymentMethod(methode: paymentMethod) {
      try {
        const data = await this.lbcConnector(`${'/api/' /*api/buy-bitcoins-online/${methode.method}*/}`, '');
        return data;
      } catch (error) {
        throw error;
      }
    }
  })(lbcConnector);

export default PublicMarketData;

const publicMarketData = new PublicMarketData();
publicMarketData
  .getBitcoinsOnlinebypaymentMethod(new paymentMethod('INTERAC', 'INTERAC', 'INTERAC'))
  .then(data => console.log(data.data))
  .catch(error => console.log(error.message));

// // PublicMarketData

// // /buy-bitcoins-online/{currency}/.json	-	-

// // /buy-bitcoins-online/{payment_method}/.json	-	-

// // /buy-bitcoins-online/.json	-	-

// /* --------------------------- */

// // /sell-bitcoins-online/{countrycode}/{country_name}/{payment_method}/.json	-

// // /sell-bitcoins-online/{countrycode}/{country_name}/.json	-	-

// // /sell-bitcoins-online/{currency}/{payment_method}/.json	-	-

// // /sell-bitcoins-online/{currency}/.json	-	-

// // /sell-bitcoins-online/{payment_method}/.json	-	-

// // /sell-bitcoins-online/.json	-	-

// // /bitcoinaverage/ticker-all-currencies/	-	-	Returns a JSON feed of average Bitcoin prices on LocalBitcoins for all currencies.

// // /bitcoincharts/{currency}/trades.json	-	-	Returns a list of completed trades with amount and FIAT price.

// // /bitcoincharts/{currency}/orderbook.json	-	-	Returns a list of online buy and sell advertisements.// Public Market Data

// /* --------------------------- */

// // /buy-bitcoins-with-cash/{location_id}/{location_slug}/.json	-	-	Returns local buy advertisements.

// // /sell-bitcoins-for-cash/{location_id}/{location_slug}/.json	-	-	Returns local sell advertisements.

// // /buy-bitcoins-online/{countrycode}/{country_name}/{payment_method}/.json	-	-

// // /buy-bitcoins-online/{countrycode}/{country_name}/.json	-	-

// // /buy-bitcoins-online/{currency}/{payment_method}/.json	-	-
// // /buy-bitcoins-online/{currency}/.json	-	-
// // /buy-bitcoins-online/{payment_method}/.json	-	-
// // /buy-bitcoins-online/.json	-	-
// // /sell-bitcoins-online/{countrycode}/{country_name}/{payment_method}/.json	-	-
// // /sell-bitcoins-online/{countrycode}/{country_name}/.json	-	-
// // /sell-bitcoins-online/{currency}/{payment_method}/.json	-	-
// // /sell-bitcoins-online/{currency}/.json	-	-
// // /sell-bitcoins-online/{payment_method}/.json	-	-
// // /sell-bitcoins-online/.json	-	-
// // /bitcoinaverage/ticker-all-currencies/	-	-	Returns a JSON feed of average Bitcoin prices on LocalBitcoins for all currencies.
// // /bitcoincharts/{currency}/trades.json	-	-	Returns a list of completed trades with amount and FIAT price.
// // /bitcoincharts/{currency}/orderbook.json	-	-	Returns a list of online buy and sell advertisements.
// // /buy-bitcoins-with-cash/{location_id}/{location_slug}/.json	-	-	Returns local buy advertisements.

// // /sell-bitcoins-for-cash/{location_id}/{location_slug}/.json	-	-	Returns local sell advertisements.
