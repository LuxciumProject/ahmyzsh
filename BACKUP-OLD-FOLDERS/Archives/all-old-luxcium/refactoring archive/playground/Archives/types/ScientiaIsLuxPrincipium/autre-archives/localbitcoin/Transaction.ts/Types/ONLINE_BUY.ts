/** @format */

import { TradeType, TradeTypes } from './TradeType';

class ONLINE_BUY extends TradeType {
  constructor() {
    super(TradeTypes.ONLINE_BUY);
  }
}

export default ONLINE_BUY;
export { TradeType, TradeTypes, ONLINE_BUY };
