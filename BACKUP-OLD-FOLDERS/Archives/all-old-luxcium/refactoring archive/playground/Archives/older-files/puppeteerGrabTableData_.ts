/** @format */

// /** @format */

// import {puppet} from './htmlTableDataGeter/puppetWrapper';

// const dataExtraction = (() => {
//   return async url => {
//     const headAndBody = String(await puppet(url))
//       .split('<tr>')
//       .join('')
//       .split('\n')
//       .join('')
//       .split('<thead>')
//       .join('')
//       .split('</thead>')
//       .join('')
//       .split('</tbody>')
//       .join('')
//       .split('<tbody>');
//     console.log(headAndBody);
//     const tHead = await headAndBody[0]
//       .split('<th>')
//       .join('')
//       .split('</th>')
//       // *** FUNCTION  ***
//       .map(value => value.trim());
//     tHead.pop();

//     // *** FUNCTION  ***
//     const tBodys = headAndBody[1].split('</tr>').map(value => {
//       const myValue = value
//         .trim()
//         .split('</td>')
//         .join('\n@#$')
//         .split('—')
//         .join("'NULL'")
//         .split('<td>')
//         .join('')
//         .split('\n@#$');

//       myValue.pop();

//       return myValue;
//     });

//     // *** FUNCTION  ***
//     const tBody = tBodys.map((rowData, i) => {
//       const monObject = {};
//       // *** FUNCTION  ***
//       const celsData = rowData.map((celData, index) => {
//         monObject[tHead[index]] = celData;

//         return monObject;
//       });
//       // const monArrray = [];
//       // monArrray.push(celsData);
//       return celsData;
//     });

//     const dataExtractionData = {
//       url,
//       tHead,
//       tBody,
//     };
//     return dataExtractionData;
//   };
// })();

// // *** FUNCTION  ***
// const main = async () => {
//   const tData = await dataExtraction(
//     'https://bitcoincharts.com/charts/bitstampUSD#rg1zig1-minzczsg2018-11-02zeg2018-11-03ztgSzm1g10zm2g25zv'
//   );
//   console.log(tData);
//   // console.log(tData.tBody);
// };
// main();
