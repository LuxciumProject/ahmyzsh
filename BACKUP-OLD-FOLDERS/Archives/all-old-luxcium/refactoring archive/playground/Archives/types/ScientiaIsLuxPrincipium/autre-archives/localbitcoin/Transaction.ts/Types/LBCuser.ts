/** @format */

import Field from '../../../Field/Field';

class LBCuser extends Field {
  private userName: string;
  constructor(userName: string) {
    super('user', 'LBCuser');
    this.userName = userName;
    this.fieldValue = userName;
  }
  public toString(): string {
    return this.userName;
  }
}

export default LBCuser;
