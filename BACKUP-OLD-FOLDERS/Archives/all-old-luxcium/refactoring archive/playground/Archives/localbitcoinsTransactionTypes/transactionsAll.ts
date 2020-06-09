// /** @format */

// // /** @format */
// // import ScientiaIsLuxPrincipium from '../ScientiaIsLuxPrincipium';
// // enum TradeTypes {
// //   ONLINE_SELL = 'ONLINE_SELL',
// //   ONLINE_BUY = 'ONLINE_BUY',
// //   UNDEFINED = 'UNDEFINED',
// // }
// // enum CurrencyTypes {
// //   USD = 'USD',
// //   CAD = 'CAD',
// //   MXN = 'MXN',
// //   UNDEFINED = 'UNDEFINED',
// // }

// // enum OnlineProviders {
// //   UNDEFINED = 'UNDEFINED',
// // }

// // // type Num = {kind:'num',num:number}
// // // type Str = {kind:'str',str:string}
// // class ValueClass extends ScientiaIsLuxPrincipium {
// //   protected value: string | number;
// //   constructor(value: string | number, kind: string = 'ValueClass') {
// //     super(kind);
// //     this.value = value;
// //   }
// //   protected getValue() {
// //     return this.value;
// //   }
// //   protected setValue(value: string | number) {
// //     this.value = value;
// //   }
// // }

// // class StringValue extends ValueClass {
// //   protected value: string;
// //   constructor(value: string = '', kind: string = 'StringValue') {
// //     super(value, kind);
// //     this.value = value;
// //     super.setValue(this.value);
// //   }
// //   public toString(): string {
// //     return this.value.toString();
// //   }
// // }
// // class NumberValue extends ValueClass {
// //   protected value: number;
// //   constructor(value: number = 0, kind: string = 'NumberValue') {
// //     super(value, kind);
// //     this.value = value;
// //     super.setValue(this.value);
// //   }
// //   public toString(positions?: number): string {
// //     return this.value.toFixed(positions);
// //   }
// // }

// // class id extends ValueClass {
// //   constructor(id: string | number) {
// //     super(id, 'id');
// //   }
// //   public toString(): string {
// //     const value: string | number = super.getValue();
// //     if (typeof value === 'number') {
// //       return value.toFixed();
// //     } else {
// //       return value.toString();
// //     }
// //   }
// // }
// // class Reference extends id {}
// // class OnlineProvider extends ScientiaIsLuxPrincipium {
// //   private value: OnlineProviders;
// //   constructor(value: OnlineProviders) {
// //     super();
// //     this.value = value;
// //   }
// //   public toString(): string {
// //     return this.value.toString();
// //   }
// // }
// // class CurrencyType extends ScientiaIsLuxPrincipium {
// //   private value: CurrencyTypes;
// //   constructor(value: CurrencyTypes) {
// //     super();
// //     this.value = value;
// //   }
// //   public toString(): string {
// //     return this.value.toString();
// //   }
// // }
// // class TradeType extends ScientiaIsLuxPrincipium {
// //   private value: TradeTypes;
// //   constructor(value: TradeTypes) {
// //     super();
// //     this.value = value;
// //   }
// //   public toString(): string {
// //     return this.value.toString();
// //   }
// // }
// // class ONLINE_SELL extends TradeType {
// //   constructor() {
// //     super(TradeTypes.ONLINE_SELL);
// //   }
// // }
// // class ONLINE_BUY extends TradeType {
// //   constructor() {
// //     super(TradeTypes.ONLINE_BUY);
// //   }
// // }

// // class LBCuser extends StringValue {
// //   private userName: string;
// //   constructor(userName: string) {
// //     super();
// //     this.userName = userName;
// //   }
// //   public toString(): string {
// //     return this.userName;
// //   }
// // }
// // class Seller extends LBCuser {
// //   constructor(userName: string) {
// //     super(userName);
// //   }
// // }
// // class Buyer extends LBCuser {
// //   constructor(userName: string) {
// //     super(userName);
// //   }
// // }
// // class CurencyValue extends NumberValue {
// //   constructor(value: number) {
// //     super(value);
// //   }
// //   public toString(positions: number = 2) {
// //     return super.toString(positions);
// //   }
// // }
// // class FiatAmount extends CurencyValue {
// //   constructor(value: number) {
// //     super(value);
// //   }
// //   public toString(positions: number = 2) {
// //     return super.toString(positions);
// //   }
// // }

// // class BTCAmount extends CurencyValue {
// //   constructor(value: number) {
// //     super(value);
// //   }
// //   public toString(positions: number = 8) {
// //     return super.toString(positions);
// //   }
// // }

// // class BTCPrice extends CurencyValue {
// //   constructor(value: number) {
// //     super(value);
// //   }
// //   public toString(positions: number = 2) {
// //     return super.toString(positions);
// //   }
// // }

// // class TransactionLBC {
// //   public id: id;
// //   public createdAt: Date;
// //   public buyer: Buyer;
// //   public seller: Seller;
// //   public tradeType: TradeType;
// //   public btcAmount: BTCAmount;
// //   public btcTraded: BTCAmount;
// //   public feeBtc: BTCAmount;
// //   public btcAmountLessFee: BTCAmount;
// //   public btcFinal: BTCAmount;
// //   public fiatAmount: FiatAmount;
// //   public fiatFee: FiatAmount;
// //   public fiatPerBTC: BTCPrice;
// //   public currency: CurrencyType;
// //   public exchangeRate: BTCPrice;
// //   public transactionReleasedAt: Date;
// //   public onlineProvider: OnlineProvider;
// //   public reference: Reference;
// //   constructor() {
// //     this.id = new id(0);
// //     this.createdAt = new Date('');
// //     this.buyer = new Buyer('');
// //     this.seller = new Seller('');
// //     this.tradeType = new TradeType(TradeTypes.UNDEFINED);
// //     this.btcAmount = new BTCAmount(0);
// //     this.btcTraded = new BTCAmount(0);
// //     this.feeBtc = new BTCAmount(0);
// //     this.btcAmountLessFee = new BTCAmount(0);
// //     this.btcFinal = new BTCAmount(0);
// //     this.fiatAmount = new FiatAmount(0);
// //     this.fiatFee = new FiatAmount(0);
// //     this.fiatPerBTC = new BTCPrice(0);
// //     this.currency = new CurrencyType(CurrencyTypes.UNDEFINED);
// //     this.exchangeRate = new BTCPrice(0);
// //     this.transactionReleasedAt = new Date('');
// //     this.onlineProvider = new OnlineProvider(OnlineProviders.UNDEFINED);
// //     this.reference = new Reference('');
// //   }
// // }

// // export default TransactionLBC;
// export { Buyer, Seller, LBCuser, ONLINE_BUY, ONLINE_SELL, BTCAmount, StringValue };
