/** @format */
import Node from '../Node';
import NodesList from './NodesList';

class DoublyLinkedNodesList extends NodesList {
  public head: Node | null;

  public tail: Node | null;

  constructor() {
    super();
    this.head = null;
    this.tail = null;
  }

  public push(node: Node) {
    if (this.length === 0) {
      this.head = node;
      this.tail = node;
    } else {
      this.tail !== null ? (this.tail.next = node) : (this.tail = null);
      node.previous = this.tail;
      this.tail = node;
    }
    this.length += 1;
    return this;
  }

  public pop() {
    if (this.tail === null) return undefined;

    const poppedNode = this.tail;

    if (this.length === 1) {
      this.head = null;
      this.tail = null;
    } else {
      this.tail = poppedNode.previous;
      this.tail !== null ? (this.tail.next = null) : (this.tail = null);
      poppedNode.previous = null;
      poppedNode.next = null;
    }
    this.length += -1;
    return poppedNode;
  }

  public unshift(node: Node) {
    if (this.length === 0) {
      this.head = node;
      this.tail = node;
    } else {
      this.head !== null ? (this.head.previous = null) : (this.head = null);
      node.next = this.head;
      this.head = node;
    }
    this.length += 1;
    return this;
  }

  public shift() {
    if (this.head === null) return undefined;
    const shiftedNode = this.head;
    if (this.length === 1) {
      this.head = null;
      this.tail = null;
    } else {
      this.head = shiftedNode.next;
      this.head !== null ? (this.head.previous = null) : (this.head = null);
      shiftedNode.previous = null;
      shiftedNode.next = null;
    }
    this.length += -1;
    return shiftedNode;
  }

  public get(index: number) {
    if (index < 0 || index >= this.length) return undefined;
    let count: number;
    let current: Node = new Node();
    if (index <= this.length / 2) {
      count = 0;
      this.head !== null ? (current = this.head) : (this.head = null);
      while (count !== index) {
        current.next !== null ? (current = current.next) : (current.next = null);
        count += 1;
      }
    } else {
      count = this.length - 1;
      this.tail !== null ? (current = this.tail) : (this.tail = null);
      while (count !== index) {
        current.previous !== null ? (current = current.previous) : (current.previous = null);
        count += -1;
      }
    }
    return current;
  }

  public set(index: number, node: Node) {
    const foundNode = this.get(index);
    if (foundNode != null) {
      foundNode.value = node;
      return true;
    }
    return false;
  }

  public insert(index, node: Node) {
    if (index < 0 || index > this.length) return false;
    if (index === 0) return !!this.unshift(node);
    if (index === this.length) return !!this.push(node);

    const beforeNode = this.get(index - 1);
    let afterNode;
    let nothing = null;
    beforeNode !== undefined ? (beforeNode.next = node) : (nothing = nothing);
    beforeNode !== undefined ? (node.previous = beforeNode) : (nothing = nothing);
    beforeNode !== undefined ? (afterNode = beforeNode.next) : (nothing = nothing);
    node.next = afterNode;
    afterNode.previous = node;
    this.length += 1;
    return true;
  }

  public find(node: Node): Node {
    node.value;
    return new Node('hello');
  }
}

export default DoublyLinkedNodesList;
