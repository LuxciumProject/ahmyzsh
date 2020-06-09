/** @format */

import utf8 from 'utf8';
import crypto from 'crypto';
import request from 'request';
import lbcKey from '../../keys/keys';

const encd = utf8.encode;

export default async (endpoint: string, parmsURLencoded: string = '') => {
  const lbcURL = lbcKey.baseUrl;
  lbcURL.pathname = endpoint;
  const nonce = Date.now();
  request.get(
    {
      url: lbcURL.href,
      headers: {
        'User-Agent': 'NeB_401.Corp',
        'Apiauth-Key': lbcKey.public,
        'Apiauth-Nonce': nonce,
        'Apiauth-Signature': crypto
          .createHmac('sha256', lbcKey.secret)
          .update(encd(`${nonce}${lbcKey.public}${endpoint}${parmsURLencoded}`))
          .digest('hex')
          .toUpperCase(),
      },
    },
    (err, r, body) => {
      if (JSON.parse(body).data) return JSON.parse(body);
      if (err) throw err;
      if (JSON.parse(body).error) throw JSON.parse(body).error;
      throw new Error('No body fetched from the request');
    }
  );
};
// const lbcServer = async (endpoint: string, parmsURLencoded: string = '') => {
//   const lbcURL = lbcKey.baseUrl;
//   lbcURL.pathname = endpoint;
//   // const nonce = Date.now();
//   // return nonce;
//   const response = await axios.get(endpoint);
//   return response
// };

// export { lbcServer };

// {
//   url: lbcURL.href,
//   headers: {
//     'User-Agent': 'NeB_401.Corp',
//     'Apiauth-Key': lbcKey.public,
//     'Apiauth-Nonce': nonce,
//     'Apiauth-Signature': crypto
//       .createHmac('sha256', lbcKey.secret)
//       .update(encd(`${nonce}${lbcKey.public}${endpoint}${parmsURLencoded}`))
//       .digest('hex')
//       .toUpperCase(),
//   },
// },
// (err, r, body) => {
//   if (err) reject(err);
//   if (JSON.parse(body).error) reject(JSON.parse(body).error);
//   if (JSON.parse(body).data) resolve(JSON.parse(body));
// }

// next & previous
/*
import helpers from "./helpers";
const pagination = {
  next:
    "https://localbitcoins.com/api/dashboard/released/?order_by=-closed_at&start_at=2018-08-09+21%3A20%3A52%2B00%3A00",
  previous: ""
};

function previous() {
  console.log("function previous() {}");
}
function next() {
  console.log("function next() {}");
}
function previousPage() {
  console.log("function previousPage() {}");
}
function nextPage() {
  console.log("function nextPage() {}");
}

const Paginable = function() {
  this.previous = previous;
  this.next = next;
  this.previousPage = previous;
  this.nextPage = nextPage;
};
// Paginable.prototype.next = next;
const Closed = () => {
  // this.previousPage = previous;
};
Closed.prototype = new Paginable();
// Closed.prototype.nextPage = nextPage;

const testing = new Closed();

module.exports = Closed;

*/
