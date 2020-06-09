'use strict';
const { internalBinding } = require('internal/bootstrap/loaders');
const { getOptions, types } = internalBinding('options');

const typeLookup = [];
for (const key of Object.keys(types))
  typeLookup[types[key]] = key;

// Environment variables are parsed ad-hoc throughout the code base,
// so we gather the documentation here.
const { hasIntl, hasSmallICU, hasNodeOptions } = process.binding('config');
const envVars = new Map([
  ['NODE_DEBUG', { helpText: "','-separated list of core modules that " +
    'should print debug information' }],
  ['NODE_DEBUG_NATIVE', { helpText: "','-separated list of C++ core debug " +
    'categories that should print debug output' }],
  ['NODE_DISABLE_COLORS', { helpText: 'set to 1 to disable colors in ' +
    'the REPL' }],
  ['NODE_EXTRA_CA_CERTS', { helpText: 'path to additional CA certificates ' +
    'file' }],
  ['NODE_NO_WARNINGS', { helpText: 'set to 1 to silence process warnings' }],
  ['NODE_PATH', { helpText: `'${require('path').delimiter}'-separated list ` +
    'of directories prefixed to the module search path' }],
  ['NODE_PENDING_DEPRECATION', { helpText: 'set to 1 to emit pending ' +
    'deprecation warnings' }],
  ['NODE_PRESERVE_SYMLINKS', { helpText: 'set to 1 to preserve symbolic ' +
    'links when resolving and caching modules' }],
  ['NODE_REDIRECT_WARNINGS', { helpText: 'write warnings to path instead ' +
    'of stderr' }],
  ['NODE_REPL_HISTORY', { helpText: 'path to the persistent REPL ' +
    'history file' }],
  ['OPENSSL_CONF', { helpText: 'load OpenSSL configuration from file' }]
].concat(hasIntl ? [
  ['NODE_ICU_DATA', { helpText: 'data path for ICU (Intl object) data' +
    hasSmallICU ? '' : ' (will extend linked-in data)' }]
] : []).concat(hasNodeOptions ? [
  ['NODE_OPTIONS', { helpText: 'set CLI options in the environment via a ' +
    'space-separated list' }]
] : []));


function indent(text, depth) {
  return text.replace(/^/gm, ' '.repeat(depth));
}

function fold(text, width) {
  return text.replace(new RegExp(`([^\n]{0,${width}})( |$)`, 'g'),
                      (_, newLine, end) => newLine + (end === ' ' ? '\n' : ''));
}

function getArgDescription(type) {
  switch (typeLookup[type]) {
    case 'kNoOp':
    case 'kV8Option':
    case 'kBoolean':
      break;
    case 'kHostPort':
      return '[host:]port';
    case 'kInteger':
    case 'kString':
    case 'kStringList':
      return '...';
    case undefined:
      break;
    default:
      require('assert').fail(`unknown option type ${type}`);
  }
}

function format({ options, aliases = new Map(), firstColumn, secondColumn }) {
  let text = '';

  for (const [
    name, { helpText, type, value }
  ] of [...options.entries()].sort()) {
    if (!helpText) continue;

    let displayName = name;
    const argDescription = getArgDescription(type);
    if (argDescription)
      displayName += `=${argDescription}`;

    for (const [ from, to ] of aliases) {
      // For cases like e.g. `-e, --eval`.
      if (to[0] === name && to.length === 1) {
        displayName = `${from}, ${displayName}`;
      }

      // For cases like `--inspect-brk[=[host:]port]`.
      const targetInfo = options.get(to[0]);
      const targetArgDescription =
        targetInfo ? getArgDescription(targetInfo.type) : '...';
      if (from === `${name}=`) {
        displayName += `[=${targetArgDescription}]`;
      } else if (from === `${name} <arg>`) {
        displayName += ` [${targetArgDescription}]`;
      }
    }

    let displayHelpText = helpText;
    if (value === true) {
      // Mark boolean options we currently have enabled.
      // In particular, it indicates whether --use-openssl-ca
      // or --use-bundled-ca is the (current) default.
      displayHelpText += ' (currently set)';
    }

    text += displayName;
    if (displayName.length >= firstColumn)
      text += '\n' + ' '.repeat(firstColumn);
    else
      text += ' '.repeat(firstColumn - displayName.length);

    text += indent(fold(displayHelpText, secondColumn),
                   firstColumn).trimLeft() + '\n';
  }

  return text;
}

function print(stream) {
  const { options, aliases } = getOptions();

  // TODO(addaleax): Allow a bit of expansion depending on `stream.columns`
  // if it is set.
  const firstColumn = 28;
  const secondColumn = 40;

  options.set('-', { helpText: 'script read from stdin (default; ' +
                               'interactive mode if a tty)' });
  options.set('--', { helpText: 'indicate the end of node options' });
  stream.write(
    'Usage: node [options] [ -e script | script.js | - ] [arguments]\n' +
    '       node inspect script.js [arguments]\n\n' +
    'Options:\n');
  stream.write(indent(format({
    options, aliases, firstColumn, secondColumn
  }), 2));

  stream.write('\nEnvironment variables:\n');

  stream.write(format({
    options: envVars, firstColumn, secondColumn
  }));

  stream.write('\nDocumentation can be found at https://nodejs.org/\n');
}

module.exports = {
  print
};
