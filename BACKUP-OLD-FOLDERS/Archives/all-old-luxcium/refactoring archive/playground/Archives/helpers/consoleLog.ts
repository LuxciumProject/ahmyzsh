/** @format */

// tslint:disable-next-line:no-submodule-imports
import color from 'colors/safe';

// color.red(color.bold('catch error at function START_SERVER_MAIN(EXPRESS_, BODY_PARSER_, PORT_, NODE_ENV_)'))

const consoleLog = (message, error, warning) => {
  if (error) {
    console.log(color.bgRed(color.bold('> ERROR !')), error, color.bgRed(color.bold('> ERROR !')));
  }
  if (warning) {
    console.log(color.bgYellow(color.bold('> WARNING !')), warning, color.bgYellow(color.bold('> WARNING !')));
  }
  if (message) {
    console.log(`> ${color.bold(message)}`);
  }
};
export default consoleLog;
