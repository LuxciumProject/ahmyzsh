/** @format */

try {
  var fs = require('fs');
  var path = require('path');
  console.log('ca vas tu marché');
  console.log(new fs.Dirent().name);

  require('./server/dist/main.js');
  require('./server/dist/MAIN.js');

  // dist/server/main.js
} catch (e) {
  console.log(e.message);
}
