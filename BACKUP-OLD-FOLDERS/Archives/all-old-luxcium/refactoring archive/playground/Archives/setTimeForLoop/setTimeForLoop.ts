// /** @format */

// // import { AvPause } from 'material-ui/svg-icons';
// // import CountryCode from '../LBC/CountyCodes/CountryCode';

// /** @format */

// // /** @format */

// // import CountryCode from '../LBC/CountyCodes/CountryCode';

// // /** @format */

// // // function uneFn() {
// // //   return function deuxFn(count) {
// // //     return function troisFn(payloadFn) {
// // //       const counter = { count: 0 };
// // //       return 10;
// // //     };
// // //   };
// // // }

// enum StatusCodes {
//   started = 'STARTED',
//   stoped = 'STOPED',
//   paused = 'PAUSED',
// }

// class TimeoutForLoop {
//   private timeout: number;

//   private payload: ((number) => number);

//   private counter: ((number) => boolean);

//   private count: number;

//   constructor(countStart: number = 1, payload, counter, timeout: number = 0) {
//     this.count = countStart;
//     this.payload = payload;
//     this.timeout = timeout;
//     this.counter = counter;
//   }

//   public start() {
//     this.play();
//   }

//   private stop() {
//     this.count = 0;
//   }

//   private play() {
//     if (this.counter(this.count)) {
//       this.count = this.payload(this.count);
//       setTimeout(() => this.play(), this.timeout);
//     } else {
//       stop();
//     }
//   }
// }

// // this._state_;

// //   if (this._count_ <= 0) this.stop();
// //   if (this.paused)
// //   if (!this.stoped) {
// //   if (this._statusCodes_.started === this._state_)
// //       setTimeout(() => this.payload(), this.timeout);
// //     }

// export default TimeoutForLoop;

// // function timeoutForLoop(startCount: number = 1, payload, increment timeout: number = 0) {
// //   // payload({ count: startCount });
// //   const counter = { initialCount: startCount, count: startCount };

// //   Object.freeze(counter.initialCount);
// //   if (counter.count >= 0) {
// //     setTimeout(payload(counter), timeout);
// //   }
// // }
// // export default timeoutForLoop;
// // // return (count:number= 0) => {
// // //   const counter = { count};
// // // }; (payload) => {

// // //   (start:number= 0) => {
// // //   //
// // //   };
// // //   payLoad => {
// // //     setTimeout(payLoad(counter));
// // //   };
// // // // timeout:number = 0)
// // // timer, payLoadFN, count = 0, decrementerFN,

// // // function setTimeoutFor(functionA, functionConditionB: (validator) => boolean, increment:()=> void, delayC: number = 0) {
// // //   function looping(condition: boolean, callback) {
// // //     setTimeout(() => functionA(), delayC);
// // //     //   return callback
// // //   }
// // //   looping(functionConditionB(), functionA);
// // // }

// // // function setTimeoutFor(
// // //   callback,
// // //   functionOfValidation: (startValue: number) => boolean,
// // //   increment: (startValue: number) => number,
// // //   timeout: number = 0
// // // ) {
// // //   // tslint:disable-next-line:only-arrow-functions
// // //   const timeOut = function(countValue: number) {
// // //     countValue = increment(countValue);
// // //     if (functionOfValidation(countValue)) {
// // //       setTimeout(() => {
// // //         callback(countValue);
// // //         timeOut(countValue);
// // //       }, timeout);
// // //     }
// // //   };
// // //   return timeOut;
// // // }

// // // export default setTimeoutFor;

// // // // let index = 0;
// // // // index < array.length ;
// // // // index++ ;

// // // setTimeoutFor(
// // //   counter => {
// // //     console.log('ding');
// // //     console.log(counter, 'timeout');
// // //   },
// // //   counter => counter <= 10,
// // //   increment => increment++,
// // //   0
// // // )(1);

// // // setTimeFOR(() => {
// // //   console.log('ding');
// // //   myfunct();
// // // })(counter => counter <= 10)(increment => increment + 1)(0);
// // // setTimeFOR(counter => {
// // //   console.log('dong');
// // //   myfunct();
// // // })(counter => counter <= 10)(increment => increment + 1)(0);

// // // function myfunct() {
// // //   for (let i = 0; i <= 10; i++) {
// // //     console.log(i);
// // //   }
// // // }
