
cd /d/development/LuxciumProject/luxcium.io
code --disable-gpu  --verbose 
concurrently \"npm:start:nodemon\" \"npm:build:watch:tsc\" \"npm:build:watch:webpack\" \" 