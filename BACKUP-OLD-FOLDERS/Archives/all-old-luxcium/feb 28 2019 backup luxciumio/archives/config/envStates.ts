/** @format */

const development = 'development';
const test = 'test';
const production = 'production';
const debug = 'debug';

type envState = 'development' | 'test' | 'production' | 'debug';

const envStates = [];

envStates[0] = test;
envStates[1] = production;
envStates[2] = development;
envStates[3] = debug;

const states = {
  test,
  development,
  production,
  debug,
};

export { envStates, states, envState };
