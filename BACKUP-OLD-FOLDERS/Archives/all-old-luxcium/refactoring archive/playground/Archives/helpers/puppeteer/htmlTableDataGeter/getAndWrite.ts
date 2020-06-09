/** @format */

import dbWriteData from './dbWriteDataBTCprices';
import dataExtraction from './dataExtraction';

async function Main(collection, url) {
  const dataObjectToInsert = await dataExtraction(url, collection, 'USD');
  dbWriteData(collection)(dataObjectToInsert.tBody);
}
Main(
  'bitstampUSD',
  'https://bitcoincharts.com/charts/bitstampUSD#rg1zig1-minzczsg2018-11-04zeg2018-11-05ztgSzm1g10zm2g25zv'
);
