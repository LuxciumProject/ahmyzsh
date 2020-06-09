/** @format */
import axios from 'axios';

import DoublyLinkedNodesList from '../../Nodes/DoublyLinkedNodesList';
import PaymentMethod from './PaymentMethod';

axios.defaults.baseURL = 'https://localbitcoins.com';

class PaymentMethodList extends DoublyLinkedNodesList {
  public static async getPaymentMethodList() {
    const apiEndPoint = '/api/payment_methods/';
    const paymentMethodList = new PaymentMethodList();
    try {
      const response = await axios.get(apiEndPoint);
      const methodsKeys = Object.keys(response.data.data.methods);
      const allMethods = response.data.data.methods;
      methodsKeys.forEach((key, i) =>
        paymentMethodList.push(new PaymentMethod(allMethods[key].name, allMethods[key].code, key))
      );

      return paymentMethodList;
    } catch (error) {
      console.log(error);
    }
  }

  public head: PaymentMethod | null;

  public tail: PaymentMethod | null;

  constructor() {
    super();
    this.head = null;
    this.tail = null;
  }
}

export default PaymentMethodList;
export { PaymentMethod, PaymentMethodList };
