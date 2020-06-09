/** @format */

class ScientiaIsLuxPrincipium {
  private kind: string;

  constructor(kind: string = 'ScientiaIsLuxPrincipium') {
    this.kind = kind;
  }

  public getKind() {
    return this.kind;
  }

  protected setKind(kind) {
    this.kind = kind;
  }
}
export default ScientiaIsLuxPrincipium;
export { ScientiaIsLuxPrincipium };
