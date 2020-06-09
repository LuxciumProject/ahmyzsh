import server from './server';
import config from '.config';
import clientSide from './client';
import publicFiles from './public';
import vscodeConfigs from './.vscode';

const MODE = 'development';
if (MODE == 'development') {
    console.log('<*>DEBUG AND DEVELLOPMENT MODE<*>');
}
if (MODE == 'staging') {
    console.log('<*>DEBUG AND DEVELLOPMENT MODE<*>');
}
if (MODE == 'production') {
    console.log('<*>DEBUG AND DEVELLOPMENT MODE<*>');
}
if (MODE == 'dev') {
    console.log('<*>DEBUG AND DEVELLOPMENT MODE<*>');
}
const rootConfig = { server, config, clientSide, publicFiles, vscodeConfigs };
module.export = rootConfig;
