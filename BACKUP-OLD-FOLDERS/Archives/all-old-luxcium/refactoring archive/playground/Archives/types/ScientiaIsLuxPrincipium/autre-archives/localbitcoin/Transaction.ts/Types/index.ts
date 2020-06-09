/** @format */

import Field from '../../../Field/Field';
import ScientiaIsLuxPrincipium from '../../../ScientiaIsLuxPrincipium/ScientiaIsLuxPrincipium';
import TradeTypes from './TradeTypes';
import CurrencyTypes from './CurrencyTypes';
import OnlineProviders from './OnlineProviders';
import ValueClass from './ValueClass';
import StringValue from './StringValue';
import NumberValue from './NumberValue';
import Id from './Id';
import Reference from './Reference';
import OnlineProvider from './OnlineProvider';
import CurrencyType from './CurrencyType';
import TradeType from './TradeType';
import ONLINE_SELL from './ONLINE_SELL';
import ONLINE_BUY from './ONLINE_BUY';
import LBCuser from './LBCuser';
import Seller from './Seller';
import Buyer from './Buyer';
import CurencyValue from './CurencyValue';
import FiatAmount from './FiatAmount';
import BTCAmount from './BTCAmount';
import BTCPrice from './BTCPrice';

export default null;
export {
  ScientiaIsLuxPrincipium,
  Field,
  TradeTypes,
  CurrencyTypes,
  OnlineProviders,
  ValueClass,
  StringValue,
  NumberValue,
  Id,
  Reference,
  OnlineProvider,
  CurrencyType,
  TradeType,
  ONLINE_SELL,
  ONLINE_BUY,
  LBCuser,
  Seller,
  Buyer,
  CurencyValue,
  FiatAmount,
  BTCAmount,
  BTCPrice,
};

/** @format */
/** @format */
// enum TradeTypes {
//   ONLINE_SELL = 'ONLINE_SELL',
//   ONLINE_BUY = 'ONLINE_BUY',
//   UNDEFINED = 'UNDEFINED',
// }
// enum CurrencyTypes {
//   USD = 'USD',
//   CAD = 'CAD',
//   MXN = 'MXN',
//   UNDEFINED = 'UNDEFINED',
// }

// enum OnlineProviders {
//   UNDEFINED = 'UNDEFINED',
// }

// class ValueClass extends ScientiaIsLuxPrincipium {
//   protected value: string | number;
//   constructor(value: string | number, kind: string = 'ValueClass') {
//     super(kind);
//     this.value = value;
//   }
//   protected getValue() {
//     return this.value;
//   }
//   protected setValue(value: string | number) {
//     this.value = value;
//   }
// }

// class StringValue extends ValueClass {
//   protected value: string;
//   constructor(value: string = '', kind: string = 'StringValue') {
//     super(value, kind);
//     this.value = value;
//     super.setValue(this.value);
//   }
//   public toString(): string {
//     return this.value.toString();
//   }
// }
// class NumberValue extends ValueClass {
//   protected value: number;
//   constructor(value: number = 0, kind: string = 'NumberValue') {
//     super(value, kind);
//     this.value = value;
//     super.setValue(this.value);
//   }
//   public toString(positions?: number): string {
//     return this.value.toFixed(positions);
//   }
// }

// class id extends ValueClass {
//   constructor(id: string | number) {
//     super(id, 'id');
//   }
//   public toString(): string {
//     const value: string | number = super.getValue();
//     if (typeof value === 'number') {
//       return value.toFixed();
//     } else {
//       return value.toString();
//     }
//   }
// }
// class Reference extends id {}
// class OnlineProvider extends ScientiaIsLuxPrincipium {
//   private value: OnlineProviders;
//   constructor(value: OnlineProviders) {
//     super();
//     this.value = value;
//   }
//   public toString(): string {
//     return this.value.toString();
//   }
// }
// class CurrencyType extends ScientiaIsLuxPrincipium {
//   private value: CurrencyTypes;
//   constructor(value: CurrencyTypes) {
//     super();
//     this.value = value;
//   }
//   public toString(): string {
//     return this.value.toString();
//   }
// }
// class TradeType extends ScientiaIsLuxPrincipium {
//   private value: TradeTypes;
//   constructor(value: TradeTypes) {
//     super();
//     this.value = value;
//   }
//   public toString(): string {
//     return this.value.toString();
//   }
// }
// class ONLINE_SELL extends TradeType {
//   constructor() {
//     super(TradeTypes.ONLINE_SELL);
//   }
// }
// class ONLINE_BUY extends TradeType {
//   constructor() {
//     super(TradeTypes.ONLINE_BUY);
//   }
// }

// class LBCuser extends StringValue {
//   private userName: string;
//   constructor(userName: string) {
//     super();
//     this.userName = userName;
//   }
//   public toString(): string {
//     return this.userName;
//   }
// }
// class Seller extends LBCuser {
//   constructor(userName: string) {
//     super(userName);
//   }
// }
// class Buyer extends LBCuser {
//   constructor(userName: string) {
//     super(userName);
//   }
// }
// class CurencyValue extends NumberValue {
//   constructor(value: number) {
//     super(value);
//   }
//   public toString(positions: number = 2) {
//     return super.toString(positions);
//   }
// }
// class FiatAmount extends CurencyValue {
//   constructor(value: number) {
//     super(value);
//   }
//   public toString(positions: number = 2) {
//     return super.toString(positions);
//   }
// }

// class BTCAmount extends CurencyValue {
//   constructor(value: number) {
//     super(value);
//   }
//   public toString(positions: number = 8) {
//     return super.toString(positions);
//   }
// }

// class BTCPrice extends CurencyValue {
//   constructor(value: number) {
//     super(value);
//   }
//   public toString(positions: number = 2) {
//     return super.toString(positions);
//   }
// }
