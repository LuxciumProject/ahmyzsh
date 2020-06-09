/** @format */

// Loop using a setTimeout
function setTimeoutLoop(functionA, functionConditionB: () => boolean, delayC: number = 0) {
  function looping(condition: boolean, callback) {
    setTimeout(() => functionA(), delayC);
    //   return callback
  }
  looping(functionConditionB(), functionA);
}

export default setTimeoutLoop;
