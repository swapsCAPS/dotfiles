module.exports = {
  extends: [ 'standard', 'prettier' ],
  plugins: ['prettier', 'align-assignments' ],
  env:     { browser: true, node: true, mocha: true },
  rules:   {
    'array-bracket-spacing':               ['warn', 'always'],
    'comma-dangle':                        ['warn', 'always'],
    'key-spacing':                         ['warn', { "align": 'value' }],
    'no-unused-vars':                      ['warn', { vars: 'all' }],
    'no-multi-spaces':                     ['warn', { 'exceptions': { 'ImportDeclaration':  true, 'VariableDeclarator': true } }],
    'padded-blocks':                       ['warn', 'never'],
    'prettier/prettier':                   'error',
    'align-assignments/align-assignments': ['warn', { 'requiresOnly': false } ]
  },
}
