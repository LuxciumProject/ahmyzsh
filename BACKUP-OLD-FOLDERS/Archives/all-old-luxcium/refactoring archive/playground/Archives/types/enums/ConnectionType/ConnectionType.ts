/** @format */

// Current server modes for running the API SERVER
// enum NODE_ENV

enum ConnectionType {
  localServerDefault = 'LOCAL_DEFAULT',
  localServerDev = 'LOCAL_DEVELOPMENT',
  localServerProd = 'LOCAL_PRODUCTION',
  localServerTest = 'LOCAL_TEST',
  develop = 'DEVELOPMENT',
  prod = 'PRODUCTION',
  test = 'TEST',
  support = 'SUPPORT',
  hotFix = 'HOT_FIX',
  featuresDev = 'FEATURES_DEVELOPMENT',
}
const isConnectionTypeOf = (connectionType: ConnectionType, isTypeOf: string | null = null): boolean => {
  return connectionType === isTypeOf;
};
export default ConnectionType;
export { ConnectionType, isConnectionTypeOf };
