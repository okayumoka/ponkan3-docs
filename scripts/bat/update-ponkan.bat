@echo off
cd /d %~dp0
cd ../../ponkan
git checkout .
git pull
call npm install
call npm run build
cd ../
copy ponkan\dist\ponkan.js public\ponkan.js
pause
@echo on
