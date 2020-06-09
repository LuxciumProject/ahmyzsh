/** @format */

import ScientiaIsLuxPrincipium from '../../../ScientiaIsLuxPrincipium/ScientiaIsLuxPrincipium';

import OnlineProviders from './OnlineProviders';

class OnlineProvider extends ScientiaIsLuxPrincipium {
  private value: OnlineProviders;
  constructor(value: OnlineProviders) {
    super();
    this.value = value;
  }
  public toString(): string {
    return this.value.toString();
  }
}

export default OnlineProvider;
