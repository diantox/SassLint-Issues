#!/bin/bash

declare -a SASS_LINT_VERSIONS
SASS_LINT_VERSIONS[0]='1.4.0'
SASS_LINT_VERSIONS[1]='1.5.0'
SASS_LINT_VERSIONS[2]='1.5.1'
SASS_LINT_VERSIONS[3]='1.6.0'
SASS_LINT_VERSIONS[4]='1.6.1'
SASS_LINT_VERSIONS[5]='1.6.2'
SASS_LINT_VERSIONS[6]='1.7.0'
SASS_LINT_VERSIONS[7]='1.8.0'
SASS_LINT_VERSIONS[8]='1.8.1'
SASS_LINT_VERSIONS[9]='1.8.2'
SASS_LINT_VERSIONS[10]='1.9.0'
SASS_LINT_VERSIONS[11]='1.9.1'
SASS_LINT_VERSIONS[12]='1.10.0'
SASS_LINT_VERSIONS[13]='1.10.1'
SASS_LINT_VERSIONS[14]='1.10.2'
SASS_LINT_VERSIONS[15]='1.11.0'
SASS_LINT_VERSIONS[16]='1.11.1'
SASS_LINT_VERSIONS[17]='1.12.0'
SASS_LINT_VERSIONS[18]='1.12.1'

rm -rf build
mkdir -p build

for VERSION in "${SASS_LINT_VERSIONS[@]}"; do
  npm install --no-save sass-lint@"${VERSION}"
  node_modules/.bin/sass-lint -qvc config/sass-lint.yaml > ./build/sass-lint@"${VERSION}"
done

npm install --no-save github:M1ras/sass-lint#rules strip-ansi
node_modules/.bin/sass-lint -qvc config/sass-lint.yaml > ./build/sass-lint@OmaewWaMouShindeiru
