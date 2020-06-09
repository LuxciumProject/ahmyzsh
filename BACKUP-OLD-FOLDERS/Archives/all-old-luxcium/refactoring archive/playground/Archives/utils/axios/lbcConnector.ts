/** @format */
import utf8 from 'utf8';
import crypto from 'crypto';
import axios from 'axios';
import lbcKey from '../keys/keys';

const lbcConnector = (nonce => (endpoint: string, parmsURLencoded: string = '') => {
  const encd = utf8.encode;
  axios.defaults.baseURL = 'https://localbitcoins.com/';
  axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
  axios.defaults.headers.common['User-Agent'] = 'NeB_401.Corp';
  axios.defaults.headers.common['Apiauth-Key'] = lbcKey.public;
  axios.defaults.headers.common['Apiauth-Nonce'] = nonce;
  axios.defaults.headers.common['Apiauth-Signature'] = crypto
    .createHmac('sha256', lbcKey.secret)
    .update(encd(`${nonce}${lbcKey.public}${endpoint}${parmsURLencoded}`))
    .digest('hex')
    .toUpperCase();
  return axios.get(endpoint);
})(Date.now());

export default lbcConnector;
