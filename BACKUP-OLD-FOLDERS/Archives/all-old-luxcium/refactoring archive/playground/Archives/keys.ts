/** @format */
import bcrypt from 'bcryptjs';
import utf8 from 'utf8';
const utf8Encd = utf8.encode;
const utf8Decd = utf8.decode;
const secretString = (calback: () => void) =>
  bcrypt.hash('DANGER : remplacing for a long string in production', 3, calback);

const lbcKey = {
  name: 'DEV_KEY-28-juillet-2018_01',
  public: utf8Encd('b49416abdc5b56b5576fdba568e2c84d'),
  secret: utf8Encd('bcf4cedf0d2a0421b91ff48946d0bbcfd5daad6651e8542cac6633b24e7c845f'),
  baseUrl: new URL('https://localbitcoins.com/'),
  permissions: ['read', 'write', 'money_pin'],
};
const keys = { lbcKey, localDB };


export default keys;
export { keys, lbcKey, utf8Encd, utf8Decd, secretString };
