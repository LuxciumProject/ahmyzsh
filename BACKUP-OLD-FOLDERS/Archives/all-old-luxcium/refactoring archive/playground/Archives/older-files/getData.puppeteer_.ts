/** @format */

// import puppeteer from 'puppeteer';
// import dataFromHTMLTable from './dataFromHTMLTable';
// import connectionAddDataToBTCpriceList from './connectionAddDataToBTCpriceList';

// async function getData(url: string) {
// 	const browser = await puppeteer.launch({ headless: false }); // {headless: false}
// 	const page = await browser.newPage();
// 	await page.goto(url);
// 	await page.evaluate('load_table()');
// 	await page.waitFor(500);
// 	const content = await page.content();
// 	const dataArray = await content.split('Load raw data</a>');
// 	const trimmed = dataArray[1].split('\n').join('').trim().split('</table>')[0].trim().split('<thead>')[1];

// 	// await console.log(dataFromHTMLTable(trimmed));
// 	browser.close();
// 	return trimmed;
// }

// (async function wrtitedata() {
// 	const returnedData = await getData(
// 		'https://bitcoincharts.com/charts/bitstampUSD#rg1zig1-minzczsg2018-11-02zeg2018-11-03ztgSzm1g10zm2g25zv'
// 	);
// 	await connectionAddDataToBTCpriceList(await dataFromHTMLTable(returnedData));
// })();

// export default getData;

//   await page.setViewport({width: 1000, height: 500});
// const innerText = await page.evaluate(() => {
//   if (document.querySelector('pre').innerText !== null || undefined) {
//     return JSON.parse(document.querySelector('pre').innerText);
//   }
//   return null;
// });
// return {
//   bid: innerText.bid,
//   ask: innerText.ask,
// };
