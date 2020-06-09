/** @format */

import Node from '../../../types/Nodes/Node';

class CountryCode extends Node {
  public code: string;

  constructor(code: string) {
    super();
    this.code = code;
    this.value = this;
  }
}

export default CountryCode;
