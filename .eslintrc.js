module.exports = {
  "extends": [ "eslint:recommended" ],

  "env": {
    "browser": true,
    "node": true,
    "es6": true,
  },

  "rules": {
    "no-multi-spaces": "off",

    "object-curly-spacing": [ "warn", "always" ],
    "key-spacing": [
      "warn",
      {
        "mode": "minimum"
        "align": "value"
      },
    ],
    "arrow-parens": [ "warn", "as-needed" ],
    "comma-dangle": [ "warn", "always-multiline" ],
    "semi": [ "error", "never" ],
    "no-unused-vars": [ "warn", { "vars": "all" } ],
    "array-bracket-spacing": [ "error", "always" ],
  },
}
