/** @format */

import * as React from 'react';
// import * as iex from './iexApi';
// tslint:disable: no-console

export default function iexRequirement() {
  // const iexTest = new iex.IEXClient(fetch);
  //
  return (
    <div>
      {/* {iexTest.stockLogo('aapl')} */}
      <code style={{ fontSize: '0.75rem' }}>
        Stock market data provided for free by{' '}
        <a
          href="https://iextrading.com/developer/"
          id="Cite-IEX-using-the-following-text-and-link__requirement-met"
        >
          IEX
        </a>
        . View IEX’s{' '}
        <a
          href="https://iextrading.com/api-exhibit-a/"
          id="IEX-terms-of-use__requirement-met"
        >
          Terms of Use
        </a>
        .
      </code>
    </div>
  );
}

// export { iexRequirement };
