/** @format */

import puppeteer from 'puppeteer';
import dataFromHTMLTable from './dataFromHTMLTable';
async function getData(url: string) {
  const browser = await puppeteer.launch({headless: true || false}); // {headless: false}
  const page = await browser.newPage();
  await page.goto(url);
  await page.evaluate('load_table()');
  await page.waitFor(500);
  const content = await page.content();
  const dataArray = await content.split('Load raw data</a>');
  const trimmed = dataArray[1]
    .split('\n')
    .join('')
    .trim()
    .split('</table>')[0]
    .trim()
    .split('<thead>')[1];

  await console.log(dataFromHTMLTable(trimmed));
  browser.close();
  return trimmed;
}
getData('https://bitcoincharts.com/charts/bitstampUSD');
export default getData;

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
