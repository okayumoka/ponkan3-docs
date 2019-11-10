@echo off
cd /d %~dp0
cd ../../
REM call node ./scripts/js/gen_command_ref_md.js %~dp0..\..\ponkan3\src\ts\tag-actions
call node ./scripts/js/gen_command_ref_md.js %~dp0..\..\ponkan3\src\ts\tag-actions > ./docs/ref/command_ref.md
@echo on