/** @format */

import Field from '../Field';

class Node extends Field {
  protected value: any;

  public previous: Node | null;

  public next: Node | null;

  constructor(
    name: string = 'node',
    kind: string = 'node',
    value: any = null,
    previous: Node | null = null,
    next: Node | null = null
  ) {
    super(name, kind);
    this.value = value;
    super.setFieldValue(this.value);
    this.previous = previous;
    this.next = next;
  }
}

export default Node;
