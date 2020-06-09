/** @format */

import puppeteer from 'puppeteer';

const myPuppeteerWrapper = (headless: boolean) => (url: string) => {
  return (async () => {
    const browser = await puppeteer.launch({headless});
    const page = await browser.newPage();
    await page.goto(url);
    return {browser: {close: browser.close, page}};
  })();
};

//

// {browser: {close: browser.close}, page: {}};

const myPuppeteer = myPuppeteerWrapper(true);

const puppetWrapper = puppet => {
  // *** FUNCTION  ***
  const myPuppeteerTableTrimer = async url => {
    const browser = await puppet.launch(); // {headless: false}
    const page = await browser.newPage();
    await page.goto(url);
    await page.evaluate('load_table()');
    await page.waitFor(1000);
    const tableData = await page.evaluate(`document.querySelector('table#chart_table.data').innerHTML`);
    await browser.close();
    console.log('> puppetWrapper> browser.close() return tableData');
    return tableData;
  };
  console.log('> puppetWrapper> return myPuppeteerTableTrimer');

  return myPuppeteerTableTrimer;
};

const puppeteerGrabTableData = puppetWrapper(puppeteer);
export default puppetWrapper;
export {myPuppeteer, puppeteerGrabTableData as puppet};
