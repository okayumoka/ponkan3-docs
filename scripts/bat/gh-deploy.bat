@echo off
cd /d %~dp0
cd ../../
call mkdocs gh-deploy
@echo on