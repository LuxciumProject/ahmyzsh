/** @format */

import utf8 from 'utf8';
import crypto from 'crypto';
import request from 'request';
import lbcKey from '../../keys/keys';

const encd = utf8.encode;

const myLBCConnector = async (endpoint: string, parmsURLencoded: string = '') => {
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
export default myLBCConnector;
