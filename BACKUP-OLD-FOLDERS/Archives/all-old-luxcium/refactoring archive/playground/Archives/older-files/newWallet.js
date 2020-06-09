/** @format */

const secureRandom = require('secure-random');
const Ripemd160 = require('ripemd160');
const sha256 = require('js-sha256');
const base58 = require('bs58');
const EC = require('elliptic').ec;

const ecdsa = new EC('secp256k1');

function generateNewWallet() {
  const hex = 'hex';
  const theNewWallet = {};

  // Generating private key
  const privateKey = generatePrivateKey();
  theNewWallet.privateKey = privateKey.toString('hex');

  // Generating the WIF
  const wif = createPrivateKeyWIF(privateKey);
  theNewWallet.wif = wif;

  // Eleptic curve key to public
  const keys = ecdsa.keyFromPrivate(privateKey);
  const publicKey = keys.getPublic('hex');
  theNewWallet.publicKey = publicKey;

  const hisHash = sha256(Buffer.from(publicKey, 'hex'));
  const publicKeyHash = new Ripemd160()
    .update(Buffer.from(hisHash, 'hex'))
    .digest();
  const step1 = Buffer.from(`00${publicKeyHash.toString('hex')}`, hex);
  const step2 = sha256(step1);
  const step3 = sha256(Buffer.from(step2, hex));
  const checksum = step3.substring(0, 8);
  const step4 = step1.toString('hex') + checksum;
  const hash160 = `${'00'}-${publicKeyHash.toString('hex')}-${checksum}`;
  //   console.log(' > hash160 :', hash160);
  theNewWallet.hash160 = hash160;
  const address = base58.encode(Buffer.from(step4, hex));
  theNewWallet.address = address;
  //   console.log(' > Wallet public adresse :', address);
  return theNewWallet;
}
function generatePrivateKey() {
  const max = Buffer.from(
    '0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364140'
  );

  let isInvalid = true;
  let privateKey;

  while (isInvalid) {
    privateKey = secureRandom.randomBuffer(32);
    if (Buffer.compare(max, privateKey) === 1) {
      isInvalid = false;
    }
  }
  // privateKey =
  // 'b189cbddac21d10a78c744edeac8b3b025d9492254d35eae022a4d9b233e32e3';
  return privateKey;
}
function createPrivateKeyWIF(privateKey) {
  const step1 = Buffer.from(`80${privateKey.toString('hex')}`, 'hex');
  const step2 = sha256(step1);
  const step3 = sha256(Buffer.from(step2, 'hex'));
  const checksum = step3.substring(0, 8);
  const step4 = step1.toString('hex') + checksum;
  const privateKeyWIF = base58.encode(Buffer.from(step4, 'hex'));
  return privateKeyWIF;
}

console.log(generateNewWallet().publicKey);

// export default generateNewWallet;
/*
Administrateur@PC-MasterRace MINGW64 /d/development/LuxciumProject/my-bitcoin-stuff
$ node myWallet.js
> Private key created:  48b1212e1d4a61e189b80e75fba48e2b7e519f1e3d5da6321f99c8b084eb5935

Administrateur@PC-MasterRace MINGW64 /d/development/LuxciumProject/my-bitcoin-stuff
$ node myWallet.js
> Private key created:  c06c28a9add4efa95db0225f7ad39bc693f901cd97f641f3389966347823b57a

Administrateur@PC-MasterRace MINGW64 /d/development/LuxciumProject/my-bitcoin-stuff $

Administrateur@PC-MasterRace MINGW64 /d/development/LuxciumProject/my-bitcoin-stuff
$ node myWallet.js
> Private key:  b189cbddac21d10a78c744edeac8b3b025d9492254d35eae022a4d9b233e32e3
> Private key WIF (wallet import format):  5KAUZLEWs7HZHarfQ4WdMNpNGVezTvZa6n6n1Mbgfgo25kxdpF5
> Public key created:  043f44d0af981ed56a4348fc3bcd16fd797ef9b97cb17fb3f083dd6ea87316b915b1f3af3dad2f737581f8c66e7e08912580024f00ca11aaa29a8bb5e90c12ad83
> Public key hash:  <Buffer 9c d8 47 c1 77 bb 54 06 3a e7 a0 41 35 d5 ea 42 a8 31 cd 21>
> ("00" + publicKeyHash)  009cd847c177bb54063ae7a04135d5ea42a831cd21
> step1:  <Buffer 00 9c d8 47 c1 77 bb 54 06 3a e7 a0 41 35 d5 ea 42 a8 31 cd 21>
> step2:  5a286bd4f7e8f92a86627b03cc505ce00993ba6a85e7f063dc5e1c802eacd726
> step3:  687d7f495ca67376166be30512852159e49037117161f5584668ec211b402a32
> checksum:  687d7f49
> step4:  009cd847c177bb54063ae7a04135d5ea42a831cd21687d7f49
> address:  1FJKWLx3SEspY682CpugvstG5BVB9gJK68
// 1FJKWLx3SEspY682CpugvstG5BVB9TiuSf

*/
