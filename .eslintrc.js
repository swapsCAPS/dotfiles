module.exports = {
  "extends": "standard",
  "env": { "browser": true, "node": true },
  "rules": {
    "key-spacing": ["error", { "align": "value" }],
    "no-multi-spaces": ["error", { "exceptions": { "ImportDeclaration": true } }],
    "comma-dangle": ["error", "always"],
  }
};
