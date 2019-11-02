@echo off
cd /d %~dp0
cd ../../ponkan3
git checkout .
git pull
call npm install
call npm run build
cd ../
copy ponkan3\dist\ponkan3.js public\ponkan3.js
pause
@echo on
