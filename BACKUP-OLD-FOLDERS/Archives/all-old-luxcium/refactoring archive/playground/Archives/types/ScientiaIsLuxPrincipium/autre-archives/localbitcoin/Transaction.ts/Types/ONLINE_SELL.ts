/** @format */

import { TradeType, TradeTypes } from './TradeType';

class ONLINE_SELL extends TradeType {
  constructor() {
    super(TradeTypes.ONLINE_SELL);
  }
}

export default ONLINE_SELL;
export { TradeType, TradeTypes, ONLINE_SELL };
