/** @format */
import { BTCAmount, BTCAmountLessFee, BTCFinal, BTCTraded, BTCFee } from '../../BTC/BitcoinQuantity/index';
import {
  ScientiaIsLuxPrincipium,
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
  BTCPrice,
} from './Types';

class TransactionLBC {
  public id: Id;

  public createdAt: Date;

  public buyer: Buyer;

  public seller: Seller;

  public tradeType: TradeType;

  public btcAmount: BTCAmount;

  public btcTraded: BTCTraded;

  public feeBtc: BTCFee;

  public btcAmountLessFee: BTCAmountLessFee;

  public btcFinal: BTCFinal;

  public fiatAmount: FiatAmount;

  public fiatFee: FiatAmount;

  public fiatPerBTC: BTCPrice;

  public currency: CurrencyType;

  public exchangeRate: BTCPrice;

  public transactionReleasedAt: Date;

  public onlineProvider: OnlineProvider;

  public reference: Reference;

  constructor() {
    this.id = new Id(0);
    this.createdAt = new Date('');
    this.buyer = new Buyer('');
    this.seller = new Seller('');
    this.tradeType = new TradeType(TradeTypes.UNDEFINED);
    this.btcAmount = new BTCAmount(0);
    this.btcTraded = new BTCTraded(0);
    this.feeBtc = new BTCFee(0);
    this.btcAmountLessFee = new BTCAmountLessFee(0);
    this.btcFinal = new BTCFinal(0);
    this.fiatAmount = new FiatAmount(0);
    this.fiatFee = new FiatAmount(0);
    this.fiatPerBTC = new BTCPrice('fiatPerBTC', 0);
    this.currency = new CurrencyType(CurrencyTypes.UNDEFINED);
    this.exchangeRate = new BTCPrice('exchangeRate', 0);
    this.transactionReleasedAt = new Date('');
    this.onlineProvider = new OnlineProvider(OnlineProviders.UNDEFINED);
    this.reference = new Reference('');
  }
}

export default TransactionLBC;

// const TransactionTypes = Types;|
export {
  ScientiaIsLuxPrincipium,
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

/*

('id') string | number
('created_at')  Date
('buyer')
('seller')
('trade_type')
('btc_amount') BTCAmount
('btc_traded') BTCAmount
('fee_btc') BTCAmount
('btc_amount_less_fee') BTCAmount
('btc_final') BTCAmount
('fiat_amount') Fiat
('fiat_fee') Fiat
('fiat_per_btc') Price of BTC in Fiat
('currency')  CurencyCode
('exchange_rate') Price of BTC in Fiat
('transaction_released_at') Date
('online_provider') string
('reference') string

*/
