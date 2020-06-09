/** @format */

import Node from '../../Nodes/Node';

class Currency extends Node {
  public isAltcoin: boolean;

  public name: string;

  public code: string;

  constructor(name: string, code: string, isAltcoin: boolean = false) {
    super();
    this.name = name;
    this.code = code;
    this.isAltcoin = isAltcoin;
    this.value = this;
  }
}

export default Currency;
