if not exist %APPDATA%\alacritty mkdir %APPDATA%\alacritty

mklink /H %APPDATA%\alacritty\alacritty.yml alacritty.yml 
mklink /H %USERPROFILE%\.editorconfig .editorconfig 
mklink /H %USERPROFILE%\.eslintrc.js .eslintrc.js 