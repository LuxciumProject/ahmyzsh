/** @format */

import React, {Component} from 'react';
import {disconnect} from 'mongoose';

import './styles/Login.css'

class Login extends Component {
  public render() {
    return (
      <div className="Login">
        <div className="row">
          <div className="col s12 l8 m10 xl6  ">
            <div className="card  ">
              <div className="card-content  black-text">
                <div className="card-title  ">
                  <h3>
                    <i className="material-icons left">cloud</i>
                    LOGIN
                  </h3>
                </div>
                <div className="container">
                  <form action="#!">
                    <div style={{padding: '10px'}}>
                      <input type="email" id="txtLoginUsername" placeholder="Enter your email" />
                      <label htmlFor="txtLoginUsername">
                        <i className="material-icons left">perm_identity</i> Email
                      </label>
                    </div>
                    <div style={{padding: '10px'}}>
                      <input type="Password" id="txtLoginPassword" placeholder="Enter your password" />

                      <label htmlFor="txtLoginPassword">
                        <i className="material-icons left">lock</i> Password
                      </label>
                    </div>
                    <div style={{padding: '10px'}}>
                      <a href="#" type="submit" className="waves-effect waves-light btn  light-blue accent-3">
                        Log in !
                      </a>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
export default Login;
