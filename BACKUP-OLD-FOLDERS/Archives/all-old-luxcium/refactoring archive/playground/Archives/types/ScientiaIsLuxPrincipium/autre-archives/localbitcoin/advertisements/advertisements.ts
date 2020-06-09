// /** @format */

// import authEndPointRequest from '../helpers/authRequest';
// const log = global.console.log;

// const getAds = () => {
//   const apiEndPoint = '/api/ads/';
//   const ads = authEndPointRequest(apiEndPoint);
//   console.log('request.get : bodyJSON');
//   console.log('return bodyJSON : return request.get (withAsync) : return ads = withAsync(apiEndPoint) (getAds) ');

//   return ads;
//   // .then((value) => {
//   //     log(value);
//   // })
//   // .catch((error) => {
//   //     log(error);
//   // });
// };

// // function testGetAds() {
// //     const getAds().then(value => {
// //         log((Object.getOwnPropertyNames(value.ad_list[0].data.profile)));
// //         log((Object.getOwnPropertyNames(value.ad_list[0].data)));
// //         log('');
// //         log((Object.getOwnPropertyNames(value.ad_count)));
// //         log('');

// //         //log(value.ad_count);
// //         for (let i = 0; i < value.ad_count; i++) {
// //             log('');

// //             log('');
// //             log('profile', value.ad_list[i].data.profile.name);
// //             log('adNumberInTheList', i);
// //             log('adCountInTheList', value.ad_count);
// //             log('ad_id', value.ad_list[i].data.ad_id);
// //             log('');
// //             //    log('require_feedback_score', value.ad_list[i].data.require_feedback_score);
// //             //  log('hidden_by_opening_hours', value.ad_list[i].data.hidden_by_opening_hours);
// //             log('trade_type', value.ad_list[i].data.trade_type);
// //             log('max_amount', value.ad_list[i].data.max_amount);
// //             log('min_amount', value.ad_list[i].data.min_amount);
// //             log('');
// //             log('visible', value.ad_list[i].data.visible);
// //             log('require_trusted_by_advertiser', value.ad_list[i].data.require_trusted_by_advertiser);
// //             log('require_trade_volume', value.ad_list[i].data.require_trade_volume);
// //             log('');
// //             log('countrycode', value.ad_list[i].data.countrycode);
// //             log('currency', value.ad_list[i].data.currency);
// //             log('online_provider', value.ad_list[i].data.online_provider);
// //             log('');
// //         }

// // log('temp_price', value.ad_list[i].data.temp_price);
// // log('bank_name', value.ad_list[i].data.bank_name);
// // log('payment_window_minutes', value.ad_list[i].data.payment_window_minutes);
// // log('trusted_required', value.ad_list[i].data.trusted_required);
// // log('account_info', value.ad_list[i].data.account_info);
// // log('track_max_amount', value.ad_list[i].data.track_max_amount);
// // log('temp_price_usd', value.ad_list[i].data.temp_price_usd);
// // log('lat', value.ad_list[i].data.lat);
// // log('is_local_office', value.ad_list[i].data.is_local_office);
// // log('price_equation', value.ad_list[i].data.price_equation);
// // log('first_time_limit_btc', value.ad_list[i].data.first_time_limit_btc);
// // log('atm_model', value.ad_list[i].data.atm_model);
// // log('city', value.ad_list[i].data.city);
// // log('location_string', value.ad_list[i].data.location_string);

// // log('limit_to_fiat_amounts', value.ad_list[i].data.limit_to_fiat_amounts);
// // log('created_at', value.ad_list[i].data.created_at);
// // log('lon', value.ad_list[i].data.lon);
// // log('is_low_risk', value.ad_list[i].data.is_low_risk);
// // log('sms_verification_required', value.ad_list[i].data.sms_verification_required);
// // log('max_amount_available', value.ad_list[i].data.max_amount_available);
// //    log('opening_hours', value.ad_list[i].data.opening_hours);
// // log('msg', value.ad_list[i].data.msg);
// // log('require_identification', value.ad_list[i].data.require_identification);
// // log('volume_coefficient_btc', value.ad_list[i].data.volume_coefficient_btc);

// //     }).catch(err => {
// //         global.console.error(err.message);
// //     });
// // }

// // /api/ad-get/{ad_id}/	GET	Read	Returns information on a single advertisement.
// const getAddByID = id => {
//   const apiEndPoint = `/api/ad-get/${id}/`;
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // /api/ad-get/	GET	Read	Returns all ads from a list of comma separated ad ID's
// const listsAds = () => {
//   const apiEndPoint = '/api/ad-get/';
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // withAsync
// // /api/ad/{ad_id}/	POST	Read, Write	Update an advertisement.
// const updateAdByID = id => {
//   const apiEndPoint = `/api/ad/${id}/	`;
//   authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // /api/ad-create/	POST	Read, Write	Create a new advertisement.
// const createAd = () => {
//   const apiEndPoint = '/api/ad-create/';
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // /api/ad-equation/{ad_id}/	POST	Read, Write	Update equation of an advertisement.
// const updateEquationBYID = id => {
//   const apiEndPoint = `/api/ad-equation/${id}/`;
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// const getEquationByID = id => {
//   const apiEndPoint = `/api/ad-equation/${id}/`;
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // /api/ad-delete/{ad_id}/	POST	Read, Write	Remove an advertisement.
// const deletADbyID = id => {
//   const apiEndPoint = `/api/ad-delete/${id}/`;
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // /api/payment_methods/	GET	-	Returns a list of valid payment methods.
// const getPaymentMethods = () => {
//   const apiEndPoint = '/api/payment_methods/';
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };
// // payment_methods

// // /api/payment_methods/{countrycode}/	GET	-	Returns a list of valid payment methods for a specific country code.
// const getPatmentMethodesByCountryCode = CountryCode => {
//   const apiEndPoint = `/api/payment_methods/${CountryCode}/`;
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// // /api/countrycodes/	GET	-	List of valid countrycodes for LocalBitcoins.
// const getCountryCodes = () => {
//   const apiEndPoint = '/api/countrycodes/';
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };
// // countrycodes

// // /api/currencies/	GET	-	List of valid and recognized fiat currencies for LocalBitcoins.

// const getCurrencies = () => {
//   const apiEndPoint = '/api/currencies/';
//   // return 2; //Promise.resolve(apiEndPoint);
//   return new Promise((resolve, reject) => {
//     authEndPointRequest(apiEndPoint)
//       .then(value => {
//         const data = 'data';
//         const currencies = value[data].currencies;
//         const currenciesList = {};
//         // tslint:disable-next-line:forin
//         for (const currency in currencies) {
//           currenciesList[currency] = {
//             code: currency,
//             name: currencies[currency].name,
//             isAltcoin: currencies[currency].altcoin,
//           };
//         }
//         resolve(currenciesList);
//       })
//       .catch(error => {
//         reject(error);
//       });
//   });
// };
// // currencies

// function testGetCurency() {
//   getCurrencies()
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error.message);
//     });
// }
// // testGetCurency();
// // /api/places/	GET	-	Looks up places near lat, lon and provides full URLs to buy and sell listings.
// const getPlaces = () => {
//   const apiEndPoint = '/api/places/';
//   return authEndPointRequest(apiEndPoint)
//     .then(value => {
//       log(value);
//     })
//     .catch(error => {
//       log(error);
//     });
// };

// const me = {
//   getAds,
//   getAddByID,
//   listsAds,
//   updateAdByID,
//   createAd,
//   updateEquationBYID,
//   getEquationByID,
//   deletADbyID,
//   getPaymentMethods,
//   getPatmentMethodesByCountryCode,
//   getCountryCodes,
//   getCurrencies,
//   testGetCurency,
//   getPlaces,
// };
// export default me;
