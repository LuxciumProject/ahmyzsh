'use strict';

const common = require('../common');
// The doctool currently uses js-yaml from the tool/node_modules/eslint/ tree.
try {
  require('../../tools/node_modules/eslint/node_modules/js-yaml');
} catch (e) {
  common.skip('missing js-yaml (eslint not present)');
}

const assert = require('assert');
const fs = require('fs');
const path = require('path');
const fixtures = require('../common/fixtures');
const json = require('../../tools/doc/json.js');

module.paths.unshift(
  path.join(__dirname, '..', '..', 'tools', 'doc', 'node_modules'));
const unified = require('unified');
const markdown = require('remark-parse');

function toJSON(input, filename, cb) {
  function nullCompiler() {
    this.Compiler = (tree) => tree;
  }

  unified()
    .use(markdown)
    .use(json.jsonAPI, { filename })
    .use(nullCompiler)
    .process(input, cb);
}

// Outputs valid json with the expected fields when given simple markdown
// Test data is a list of objects with two properties.
// The file property is the file path.
// The json property is some json which will be generated by the doctool.
const testData = [
  {
    file: fixtures.path('sample_document.md'),
    json: {
      type: 'module',
      source: 'foo',
      modules: [{
        textRaw: 'Sample Markdown',
        name: 'sample_markdown',
        modules: [{
          textRaw: 'Seussian Rhymes',
          name: 'seussian_rhymes',
          desc: '<ol>\n<li>fish</li>\n<li>fish</li>\n</ol>\n' +
                  '<ul>\n<li>Red fish</li>\n<li>Blue fish</li>\n</ul>',
          type: 'module',
          displayName: 'Seussian Rhymes'
        }],
        type: 'module',
        displayName: 'Sample Markdown'
      }]
    }
  },
  {
    file: fixtures.path('order_of_end_tags_5873.md'),
    json: {
      type: 'module',
      source: 'foo',
      modules: [{
        textRaw: 'Title',
        name: 'title',
        modules: [{
          textRaw: 'Subsection',
          name: 'subsection',
          classMethods: [{
            textRaw: 'Class Method: Buffer.from(array)',
            type: 'classMethod',
            name: 'from',
            signatures: [
              {
                params: [{
                  textRaw: '`array` {Array}',
                  name: 'array',
                  type: 'Array'
                }]
              }
            ]
          }],
          type: 'module',
          displayName: 'Subsection'
        }],
        type: 'module',
        displayName: 'Title'
      }]
    }
  },
  {
    file: fixtures.path('doc_with_yaml.md'),
    json: {
      type: 'module',
      source: 'foo',
      modules: [
        {
          textRaw: 'Sample Markdown with YAML info',
          name: 'sample_markdown_with_yaml_info',
          modules: [
            {
              textRaw: 'Foobar',
              name: 'foobar',
              meta: {
                added: ['v1.0.0'],
                changes: []
              },
              desc: '<p>Describe <code>Foobar</code> in more detail ' +
                'here.</p>',
              type: 'module',
              displayName: 'Foobar'
            },
            {
              textRaw: 'Foobar II',
              name: 'foobar_ii',
              meta: {
                added: ['v5.3.0', 'v4.2.0'],
                changes: [
                  { 'version': 'v4.2.0',
                    'pr-url': 'https://github.com/nodejs/node/pull/3276',
                    'description': 'The `error` parameter can now be ' +
                      'an arrow function.'
                  }
                ]
              },
              desc: '<p>Describe <code>Foobar II</code> in more detail ' +
                'here. fg(1)</p>',
              type: 'module',
              displayName: 'Foobar II'
            },
            {
              textRaw: 'Deprecated thingy',
              name: 'deprecated_thingy',
              meta: {
                added: ['v1.0.0'],
                deprecated: ['v2.0.0'],
                changes: []
              },
              desc: '<p>Describe <code>Deprecated thingy</code> in more ' +
                'detail here. fg(1p)</p>',
              type: 'module',
              displayName: 'Deprecated thingy'
            },
            {
              textRaw: 'Something',
              name: 'something',
              desc: '<!-- This is not a metadata comment -->\n<p>' +
                'Describe <code>Something</code> in more detail here.</p>',
              type: 'module',
              displayName: 'Something'
            }
          ],
          type: 'module',
          displayName: 'Sample Markdown with YAML info'
        }
      ]
    }
  }
];

testData.forEach((item) => {
  fs.readFile(item.file, 'utf8', common.mustCall((err, input) => {
    assert.ifError(err);
    toJSON(input, 'foo', common.mustCall((err, output) => {
      assert.ifError(err);
      assert.deepStrictEqual(output.json, item.json);
    }));
  }));
});
