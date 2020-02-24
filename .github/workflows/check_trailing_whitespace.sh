#!/usr/bin/env bash

set -e

# For now, restrict to Haskell code as we've a lot of third party vendored
# code in the repo that we don't want to needlessly modify
if git ls-files | egrep '\.(lhs|hs|hsc)$' | xargs grep -n ' $'; then
  echo "Trailing whitespace found!"
  exit 1
else
  exit 0
fi
