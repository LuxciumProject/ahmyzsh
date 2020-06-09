/** @format */

const request = require('request'); // QuadrigaCX API

// Public Functions

// Current Trading Information
// ***  GET https://api.quadrigacx.com/v2/ticker?book=XXX
// The above url will return trading information from the specified book.
// If unspecified, the book will default to btc_cad

// Result

module.exports = function currentTradingInformation(book) {
  request.get(`https://api.quadrigacx.com/v2/ticker?book=${book}`, (error, response, body) => {
    console.log();
    return new Promise((resolve, reject) => {
      resolve(JSON.parse(body));
      reject(error);

      // Returns JSON dictionary:

      // last - last BTC price
      // high - last 24 hours price high
      // low - last 24 hours price low
      // vwap - last 24 hours volume weighted average price: vwap
      // volume - last 24 hours volume
      // bid - highest buy order
      // ask - lowest sell order
    });
  });
};

// Order Book
// *** GET https://api.quadrigacx.com/v2/order_book
// List of all open orders

// Params:

// book - optional book to return orders for. Default btc_cad.
// group - optional group orders with the same price (0 - false; 1 - true). Default: 1.
// Result

// Returns JSON dictionary with "bids" and "asks". Each is a list of open orders and each
// order is represented as a list of price and amount.

// Transactions
// *** GET https://api.quadrigacx.com/v2/transactions
// List of recent trades

// Params:

// book - book to return orders for (optional, default btc_cad)
// time - time frame for transaction export ("minute" - 1 minute, "hour" - 1 hour). Default: hour.
// Result

// Returns descending JSON list of transactions. Every transaction (dictionary) contains:

// date - unix timestamp date and time
// tid - transaction id
// price - BTC price
// amount - BTC amount
// side - The trade side indicates the maker order side
// (maker order is the order that was open on the order book)

// Overview
// The QuadrigaCX API allows you to integrate
// the QuadrigaCX trading platform with third party applications,
// such as trading applications, charting programs, point of sale systems, and much more.
// Below you will find details on how the system functions,
// along with examples in common programming languages.

// QuadrigaCX notations
// Major denotes any of the Cryptocurrencies such as Bitcoin (BTC) or any other cryptocurrency
// which is added to the QuadrigaCX trading platform in the future.

// Minor denotes fiat currencies such as Canadian Dollars (CAD), etc.

// An order book is always referred to in the API as "Major_Minor". For example: "btc_cad"

// The current order books on QuadrigaCX are:

// btc_cad
// btc_usd
// eth_cad
// eth_btc
// ltc_cad
// ltc_btc
// bch_cad
// bch_btc
// btg_cad
// btg_btc
// *Note that Bitcoin is considered the "minor" currency in the Ether/Bitcoin order book.

// The currencies are specified with the following 3 letter codes

// Canadian Dollars = cad
// US Dollars = usd
// Bitcoin = btc
// Litecoin = ltc
// Bitcoin Cash = bch
// Bitcoin Gold = btg
// Ether = eth
