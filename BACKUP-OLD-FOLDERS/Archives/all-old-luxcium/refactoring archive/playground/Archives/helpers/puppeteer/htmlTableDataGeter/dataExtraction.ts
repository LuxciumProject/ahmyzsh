/** @format */

import {myPuppeteer} from './puppetWrapper';

// *** FUNCTION  ***
const dataExtraction = (() => {
  // *** FUNCTION  ***
  console.log(`> dataExtraction> return tHead and tBodys ${''}`);
  return async (sourceURL, dataProvider, currency) => {
    const puppeteer = await myPuppeteer(sourceURL);
    const page = await puppeteer.browser.page;
    await page.evaluate('load_table()');
    await page.waitFor(1000);
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
      // *** FUNCTION  ***
      .map(value => value.trim());
    tHead.pop();

    // *** FUNCTION  ***
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
    // *** FUNCTION  ***
    const tBody = tBodys.map((rowData, i) => {
      const monObject = {
        dateFormated: '',
        sourceURL,
        currency,
        dataProvider,
      };
      // *** FUNCTION  ***
      let myDate = '';
      let dateFormated = '';
      // *** FUNCTION  ***
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
    return dataExtractionData;
  };
})();
export default dataExtraction;
