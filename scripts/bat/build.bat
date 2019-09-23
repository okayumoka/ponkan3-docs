@echo off
cd /d %~dp0
cd ../../
call ./scripts/bat/update-ponkan.bat
call ./scripts/bat/gen-command-ref-md.bat
call mkdocs build
@echo on