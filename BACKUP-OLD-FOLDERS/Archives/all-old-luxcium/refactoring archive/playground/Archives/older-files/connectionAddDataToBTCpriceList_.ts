/** @format */

// /** @format */
// // import puppeteer from 'puppeteer';
// import {MongoClient} from 'mongodb';

// const insertDataBTC = async dataObjectToInsert => {
//   try {
//     MongoClient.connect(
//       'mongodb://localhost:27017/dataScraping',
//       {useNewUrlParser: true},
//       (connectionErr, client) => {
//         if (!connectionErr) {
//           console.log('> Connection sucessful MongoClient');
//           const db = client.db('scrapBookingBTC');
//           db.collection('BTCprices').insert(dataObjectToInsert, (insertErr, result) => {
//             if (insertErr) {
//               return console.log('> unable to insert into MongoClient', insertErr.message);
//             }
//             console.log('> Insert sucessful in scrapBookingBTC at BTCprices ');
//             return result;
//           });

//           client.close();
//           return true;
//         }
//         return console.log('> unable to connect MongoClient', connectionErr.message);
//       }
//     );
//     return console.log('> Connection terminated to MongoClient');
//   } catch (error) {
//     return console.log('> unable to continue the opperations in MongoClient', error.message);
//   }
// };
// export default insertDataBTC;
// const puppeteerGetData = async (url: string) => {
// 	const browser = await puppeteer.launch(); // {headless: false}
// 	const page = await browser.newPage();
// 	await page.goto(url);
// 	// await page.evaluate('load_table()');
// 	// await page.waitFor(500);
// 	const content = await page.content();
// 	const dataArray = await content.split('Load raw data</a>');
// 	const trimmed = await dataArray[1].split('\n').join('').trim().split('</table>')[0].trim().split('<thead>')[1];

// 	await console.log(trimmed);
// 	await browser.close();

// 	// await extractDataFromHTMLTable(trimmed);

// 	return true;
// };
// puppeteerGetData(
// 	'https://bitcoincharts.com/charts/bitstampUSD#rg1zig1-minzczsg2018-11-02zeg2018-11-03ztgSzm1g10zm2g25zv'
// );
// // const extractDataFromHTMLTable = async (tableData: string) => {
// // 	const tBodySplit = tableData.split('<tbody>');

// // 	// geting the colNames and excluding the last ellement because it does not contain data
// // 	const colNames = tBodySplit[0]
// // 		.split('</th>')
// // 		.map((value) => value.trim().substring(value.trim().indexOf('<th>') + 4));
// // 	const lasEllement = colNames.pop();
// // 	// adding back the element if it is not a element containit tags
// // 	if (lasEllement.indexOf('<') === -1) {
// // 		colNames.push(lasEllement);
// // 	}

// // 	// getting  each row of data to later grap each cell
// // 	// and asociate each then with a colon name in an object ...
// // 	const rowElements = tBodySplit[1].split('</tr>');
// // 	const cellsEllements = rowElements.map((row) => {
// // 		return row.split('</td>').join('').split('<td>').map((value, index, array) => {
// // 			if (value.indexOf('<tr>') !== -1) {
// // 				return null;
// // 			}
// // 			if (value.indexOf('</') !== -1) {
// // 				return null;
// // 			}
// // 			return value;
// // 		});
// // 	});

// // 	// filtering to remove null objects
// // 	// maping colNames with each value on each "row" of data assigning it to on object per row
// // 	const filtered = cellsEllements
// // 		.map((subArray) => subArray.filter((value) => value != null))
// // 		.filter((value) => value != null);

// // 	// removing last because empty
// // 	filtered.pop();

// // 	// adding the values to an array of objects one per row of data
// // 	const finalObject = filtered.map((subArray) => {
// // 		const myObject = {};
// // 		subArray.map((value, index) => {
// // 			myObject[colNames[index]] = value;
// // 		});

// // 		return myObject;
// // 	});
// // 	await insertDataBTC(finalObject);
// // 	return finalObject;
// // };

// // export { insertDataBTC, puppeteerGetData, extractDataFromHTMLTable };

// // puppeteerGetData(
// // 	'https://bitcoincharts.com/charts/bitstampUSD#rg1zig1-minzczsg2018-11-02zeg2018-11-03ztgSzm1g10zm2g25zv'
// // );
