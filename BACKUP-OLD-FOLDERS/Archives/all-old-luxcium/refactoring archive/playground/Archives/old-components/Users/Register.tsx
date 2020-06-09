/** @format */

import React, {Component, Props} from 'react';
import {Input} from '@material-ui/core';

// import PropTypes from 'prop-types';

class User extends Component {
  constructor(props) {
    super(props);
    props.className = '';
    this.state = {date: new Date()};
  }

  public componentDidMount() {
    // will add later
  }

  public componentWillUnmount() {
    // will add later
  }
  public render() {
    // first name
    // last name
    // email
    // password
    // password-confirm

    return (
      <div>
        <h3>USER</h3>
        <h4>Register</h4>
        <label htmlFor="txtFirstname">First Name:</label>
        <Input type="text" id="inputFirstname" placeholder="Enter your firstname" />
        <Input type="text" id="inptLastname" placeholder="Enter your lastname" />
        <Input type="text" id="inptEmail" placeholder="Enter your firstname" />
        <Input type="text" id="inptPassword" placeholder="Enter new pasword" />
        <Input type="text" id="inptPassword" placeholder="Enter pasword again" />
      </div>
    );
  }
}

export default User;
