@echo off
cd /d %~dp0
cd ../../
git clone git@github.com:okayumoka/ponkan3.git ponkan3
cd ./ponkan3
git checkout -b develop origin/develop
@echo on
