module.exports = {
  "extends": "airbnb",

  "env": {
    "browser": true,
    "node":    true
  },

  "rules": {
    "no-multi-spaces": "off",

    "array-bracket-spacing": ["warn",  "always"],
    "object-curly-spacing":  ["warn",  "always"],
    "arrow-parens":          ["warn",  "as-needed"],
    "comma-dangle":          ["warn",  "always-multiline"],
    "semi":                  ["error", "never"],
    "no-unused-vars":        ["warn",  { "vars": "all" } ],
  }
};
