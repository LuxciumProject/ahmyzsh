/** @format */
import React, { Component } from 'react';
// import CssBaseline from '@material-ui/core/CssBaseline';

import styles from './styles/App.css';

class App extends Component {
  public render() {
    return (
      <div className={styles.App__main__div}>
        top
        <header>
          <h1>LOGO</h1> <ul><li>login</li><li>register</li></ul>
        </header>
        <nav>NAV</nav>
        <section>SECTION</section>
        <footer>
          <h2>FOOTER</h2>
        </footer>
        botom
      </div>
    );
  }
}

export default App;
