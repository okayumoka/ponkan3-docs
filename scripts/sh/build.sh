#!/bin/bash

cd `dirname $0`
cd ../../
npm run gen-command-ref-md

cd manual
mkdocs build

