/** @format */

import puppeteer from 'puppeteer';
import {MongoClient} from 'mongodb';
const dbName = 'BTCprices';
const mongoDBurl = 'mongodb://localhost:27017/dataScraping';
const puppet = puppeteer;
const loadTime = 1000;
const currency = 'USD';
const dataProvider = 'bitstamp';
const collection = dataProvider;
const sourceURL =
  'https://bitcoincharts.com/charts/bitstampUSD#rg1zig1-minzczsg2018-11-04zeg2018-11-05ztgSzm1g10zm2g25zv';

(async () => {
  const browser = await puppet.launch(); // {headless: false}
  const page = await browser.newPage();
  await page.goto(sourceURL);
  await page.evaluate('load_table()');
  await page.waitFor(loadTime);
  const tableData = await page.evaluate(`document.querySelector('table#chart_table.data').innerHTML`);
  const headAndBody = await tableData
    .split('<tr>')
    .join('')
    .split('\n')
    .join('')
    .split('<thead>')
    .join('')
    .split('</thead>')
    .join('')
    .split('</tbody>')
    .join('')
    .split('<tbody>');
  const tHead = await headAndBody[0]
    .split('<th>')
    .join('')
    .split('</th>')
    // *** .map FUNCTION  ***
    .map(value => value.trim());
  tHead.pop();

  // *** .map FUNCTION  ***
  const tBodys = headAndBody[1].split('</tr>').map(value => {
    const myValue = value
      .trim()
      .split('</td>')
      .join('\n@#$')
      .split('—')
      .join("'NULL'")
      .split('<td>')
      .join('')
      .split('\n@#$');

    myValue.pop();

    //   console.log(`> dataExtraction> return myValue ${''}`);
    return myValue;
  });

  tBodys.pop();
  // *** .map FUNCTION  ***
  const tBody = tBodys.map((rowData, i) => {
    const monObject = {
      dateFormated: '',
      sourceURL,
      currency,
      dataProvider,
    };
    let myDate = '';
    let dateFormated = '';
    // *** .forEach FUNCTION  ***
    rowData.forEach((celData, index) => {
      monObject[tHead[index]] = index !== 0 ? Number(celData) : Number(new Date(celData).getTime());
      index !== 0 ? (dateFormated = '') : (myDate = celData);
    });
    dateFormated = myDate;
    monObject.dateFormated = dateFormated;
    //   console.log(`> dataExtraction> return monObject${''}`);
    return monObject;
  });

  const dataExtractionData = {
    sourceURL,
    currency,
    dataProvider,
    tHead,
    tBody,
  };
  console.log(`> dataExtraction> return dataExtractionData${''}`);

  try {
    MongoClient.connect(
      mongoDBurl,
      {useNewUrlParser: true},
      (connectionErr, client) => {
        if (!connectionErr) {
          console.log('> Connection sucessful MongoClient');
          const db = client.db(dbName);
          db.collection(collection).insertMany(dataExtractionData.tBody, (insertErr, result) => {
            if (insertErr) {
              console.log('> unable to insert into MongoClient', insertErr.message);
              return;
            }
            console.log(`> Insert sucessful in ${collection} `);
            return;
          });

          client.close();
          console.log('> Connection terminated to MongoClient');
          return;
        }
        console.log('> dbWriteDataBTCprices> unable to connect MongoClient', connectionErr.message);
        return;
      }
    );
  } catch (error) {
    console.log('> dbWriteDataBTCprices> unable to continue the opperations in MongoClient', error.message);
    return;
  }
})();
