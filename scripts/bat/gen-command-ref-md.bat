@echo off
cd /d %~dp0
cd ../../
call node ./scripts/js/gen_command_ref_md.js %~dp0..\..\ponkan3\src\ts\tag-action.ts > ./docs/ref/command_ref.md
@echo on