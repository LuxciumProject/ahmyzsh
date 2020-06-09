/** @format */

import * as React from 'react';
import { default as IexRequirement } from './components/IexRequirements';
// import { default as clientIEX } from '
// ../iex-api-react/src/api/client/client';
// import {} from '../iex-api-react/src/api/referenceData/symbols/StockSymbol';
// import { StockLogo } from
// '../iex-api-react/src/components/StockLogo/StockLogo';
import './style/App.css';

class App extends React.Component {
  public componentDidMount() {
    // implementation required
  }

  public render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Welcome to Luxcium.io</h1>
        </header>
        <IexRequirement />
      </div>
    );
  }
}

export default App;
