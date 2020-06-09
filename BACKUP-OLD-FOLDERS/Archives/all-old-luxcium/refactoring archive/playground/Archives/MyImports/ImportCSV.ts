/** @format */

import fs from 'fs';
import { Transform as Json2csvTransform } from 'json2csv';
const fields = ['field1', 'field2', 'field3'];
const opts = { fields };
const transformOpts = { highWaterMark: 16384, encoding: 'utf-8' };
const inputPath = '/Users/neb_401/Developer/neb401corp/LuxciumProject/luxcium.io/imports/contacts_all-2.csv';
const outputPath = '/Users/neb_401/Developer/neb401corp/LuxciumProject/luxcium.io/imports/all-contacts-oct-16.json';

const input = fs.createReadStream(inputPath, { encoding: 'utf8' });
const output = fs.createWriteStream(outputPath, { encoding: 'utf8' });
const json2csv = new Json2csvTransform(opts, transformOpts);

const processor = input.pipe(json2csv).pipe(output);

// You can also listen for events on the conversion and see how the header or the lines are coming out.
json2csv
  .on('header', header => console.log(header))
  .on('line', line => console.log(line))
  .on('error', err => console.log(err));

export default processor;
