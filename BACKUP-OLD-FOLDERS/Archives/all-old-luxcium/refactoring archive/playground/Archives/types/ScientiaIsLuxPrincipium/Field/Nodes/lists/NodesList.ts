/** @format */
// import Do

import Node from '../Node';

class NodesList {
  public head: Node | null | undefined;

  public tail: Node | null | undefined;

  public length: number;

  constructor() {
    this.length = 0;
  }
}

export default NodesList;
