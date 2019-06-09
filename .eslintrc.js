module.exports = {
  extends: [ 'standard', 'prettier' ],
  plugins: ['prettier', 'align-assignments' ],
  rules: {
    'prettier/prettier': 'error',
  },
  env: { browser: true, node: true, mocha: true },
  rules: {
    'comma-dangle':          ['warn', 'always'],
    'no-unused-vars':        ['warn', { vars: 'all' }],
    'no-multi-spaces':       ['warn', {

      'exceptions': {
        'ImportDeclaration':  true,
        'VariableDeclarator': true
      }
    }],

    'key-spacing':           ['warn', {
      "align": 'value'
    }],

    'padded-blocks':         ['warn', 'never'],
    'array-bracket-spacing': ['warn', 'always'],
    'align-assignments/align-assignments': ['warn', { 'requiresOnly': false } ]
  },
}
