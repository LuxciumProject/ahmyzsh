#!/bin/env zsh

ts-node "/home/luxcium/development/luxcium.io/server/lib/tedis/seters/implementation/questrade-snp500.ts"
ts-node "/home/luxcium/development/luxcium.io/server/lib/tedis/seters/implementation/questrade-iex.ts"
ts-node "/home/luxcium/development/luxcium.io/server/lib/tedis/seters/implementation/iexlist.ts" &
ts-node "/home/luxcium/development/luxcium.io/server/lib/tedis/seters/implementation/snp500list.ts" &
