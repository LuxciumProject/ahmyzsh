/** @format */

// /** @format */

// import axios from 'axios';

// import { PaymentMethod, PaymentMethodList } from './PaymentMethod/PaymentMethodList';
// import { CountryCode, CountryCodesList } from '../CountyCodes/CountryCodesList';
// import { Currency, CurrenciesList, Altcoin } from '../Currencies/CurrenciesList';

// axios.defaults.baseURL = 'https://localbitcoins.com';

// async function getPaymentMethodList() {
//   const apiEndPoint = '/api/payment_methods/';
//   const paymentMethodList = new PaymentMethodList();
//   try {
//     const response = await axios.get(apiEndPoint);
//     const methodsKeys = Object.keys(response.data.data.methods);
//     const allMethods = response.data.data.methods;
//     methodsKeys.forEach((key, i) =>
//       paymentMethodList.push(new PaymentMethod(allMethods[key].name, allMethods[key].code, key))
//     );

//     return paymentMethodList;
//   } catch (error) {
//     console.log(error);
//   }
// }
// // getPaymentMethodList().then(paymentMethodList => {
// //   paymentMethodList !== undefined
// //     ? console.log('paymentMethodList.length', paymentMethodList.length)
// //     : console.log('paymentMethodList is undefined');
// // });

// async function getCountryCodesList() {
//   const apiEndPoint = '/api/countrycodes/';
//   const countryCodesList = new CountryCodesList();
//   try {
//     const response = await axios.get(apiEndPoint);
//     const countryCodesKeys = Object.keys(response.data.data.cc_list);
//     countryCodesKeys.forEach(key => {
//       countryCodesList.push(new CountryCode(key));
//     });
//     return countryCodesList;
//   } catch (error) {
//     console.log(error);
//   }
// }
// // getCountryCodesList().then(countryCodesList => {
// //   countryCodesList !== undefined
// //     ? console.log('countryCodesList.length', countryCodesList.length)
// //     : console.log('countryCodesList is undefined');
// // });

// async function getCurrenciesList() {
//   const apiEndPoint = '/api/currencies/';
//   const currenciesList = new CurrenciesList();
//   try {
//     const response = await axios.get(apiEndPoint);
//     const currenciesKeys = Object.keys(response.data.data.currencies);
//     const currencies = response.data.data.currencies;

//     currenciesKeys.forEach(key => {
//       currencies[key].altcoin === false
//         ? currenciesList.push(new Currency(currencies[key].name, key, false))
//         : currenciesList.push(new Altcoin(currencies[key].name, key));
//     });
//     return currenciesList;
//   } catch (error) {
//     console.log(error);
//   }
// }
// // getCurrenciesList().then(currenciesList => {
// //   currenciesList !== undefined
// //     ? console.log('currenciesList.length', currenciesList.length)
// //     : console.log('currenciesList is undefined');
// // });
// export { getPaymentMethodList, getCountryCodesList, getCurrenciesList };
