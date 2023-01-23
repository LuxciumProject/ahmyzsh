#!/usr/bin/bash

alias rpcstart='(cd ${RPC_WORKER_POOL}; npm run deploy:local; (npm run docker:live:server) &)'
alias rpcrestart='(cd ${RPC_WORKER_POOL}; npm run stop:docker:live:server; npm run deploy:local; (npm run docker:live:server) &)'
alias rpcstop='(cd ${RPC_WORKER_POOL}; npm run stop:docker:live:server) &'
