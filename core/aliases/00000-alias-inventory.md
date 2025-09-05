# Complete Alias Inventory

Generated on: dim 16 mar 2025 19:00:19 EDT

## Summary of Alias Files

| Filename | Lines | Size (bytes) | Aliases Count |
|----------|-------|-------------|---------------|
| 00000-man-ls.sh | 225 | 8412 | 0 |
| 0000-projects.sh | 7 | 390 | 4 |
| 00100-aliases-manager.sh | 61 | 2603 | 11 |
| 10000-images-files.sh | 4 | 145 | 2 |
| 10001-rm.sh | 19 | 636 | 14 |
| 10002-cd.sh | 95 | 3631 | 45 |
| 10003-ls.sh | 565 | 37887 | 10 |
| 10004-cp.sh | 323 | 20012 | 0 |
| 10005-mv.sh | 186 | 7661 | 1 |
| 10006-ip.sh | 111 | 4209 | 10 |
| 11000-kill.sh | 6 | 145 | 2 |
| 11001-dnf.sh | 1125 | 36907 | 12 |
| 11800-plasma_shell.sh | 3 | 81 | 1 |
| 11811-docked.sh | 222 | 7827 | 37 |
| 11812-redis.sh | 357 | 13473 | 285 |
| 12000-systemctl.sh | 56 | 2665 | 10 |
| 12010-ALS-cht-sh.sh | 3 | 70 | 1 |
| 12010-ALS-git.sh | 332 | 11492 | 167 |
| 12010-ALS-npm.sh | 24 | 1698 | 13 |
| 12010-ALS-tsc.sh | 4 | 63 | 2 |
| 12010-ALS-vscode.sh | 62 | 2196 | 32 |
| 12010-ALS-yarn.sh | 56 | 3563 | 18 |
| 12012-ALS-sounds.sh | 1592 | 75029 | 561 |
| 12012-more-sounds.sh | 92 | 1006 | 0 |
| 12015-ALS-canon-obs.sh | 107 | 4815 | 24 |
| 12020-ALS-misc.sh | 175 | 8002 | 14 |
| 12022-ALS-stmp.sh | 35 | 988 | 0 |
| 12060-ALS-fille-access.sh | 18 | 716 | 14 |
| 12299-ALS-shutdown.sh | 32 | 1176 | 1 |
| 12551-ALS-aliases.sh | 279 | 14137 | 127 |
| 12975-ALS-zsh-lovers.sh | 199 | 6662 | 45 |
| 13002-setfont.sh | 485 | 32783 | 461 |
| 13010-ALS-nmon.sh | 255 | 14329 | 23 |
| 14000-python.sh | 3 | 36 | 1 |
| 15000-comfyui.sh | 8 | 320 | 2 |
| 20000-Terminator.sh | 22 | 912 | 15 |
| 30000-tmux.sh | 0 | 0 | 0 |
| 31000-neovim.sh | 3 | 34 | 1 |
| 78000-nvidia.sh | 154 | 8153 | 12 |
| 80000-vscode-portable.sh | 3 | 117 | 1 |
| 89000-killall.sh | 59 | 1307 | 19 |
| 90201-fnm.sh | 26 | 635 | 17 |
| include-dnf.repos.sh | 281 | 9423 | 0 |
| k8s.sh | 3 | 31 | 1 |
| tmux.sh | 41 | 1948 | 11 |
| **TOTAL** | **7718** | **348325** | **2027** |

## Changes Since Last Update

| Filename | Previous Count | Current Count | Difference |
|----------|---------------|--------------|------------|
No changes detected since last update.

## Detailed Alias Listing

### 00000-man-ls.sh

Lines: 225 | Size: 8412 bytes

| Alias | Command |
|-------|---------|

### 0000-projects.sh

Lines: 7 | Size: 390 bytes

| Alias | Command |
|-------|---------|
| `rpcstart` | `(cd ${RPC_WORKER_POOL}; npm run deploy:local; (npm run docker:live:server) &)` |
| `rpcrestart` | `(cd ${RPC_WORKER_POOL}; npm run stop:docker:live:server; npm run deploy:local; (npm run docker:live:server) &)` |
| `rpcstop` | `(cd ${RPC_WORKER_POOL}; npm run stop:docker:live:server) &` |
| `prompter` | `/projects/monorepo-one/prompts/typing_prompter/main.sh` |

### 00100-aliases-manager.sh

Lines: 61 | Size: 2603 bytes

| Alias | Command |
|-------|---------|
| `generate-alias-inventory` | `/projects/templates/ahmyzsh/tools/alias-inventory-enhanced.sh` |
| `view-aliases` | `${EDITOR:-nano} /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md` |
| `find-alias` | `function _find_alias() { grep -n "^alias $1" /projects/templates/ahmyzsh/core/aliases/*.sh; }; _find_alias` |
| `count-aliases` | `grep -c "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | sort -t: -k2 -nr` |
| `find-duplicate-aliases` | `grep "^alias " /projects/templates/ahmyzsh/core/aliases/*.sh | cut -d= -f1 | sort | uniq -d` |
| `alias-maintenance` | `/projects/templates/ahmyzsh/tools/alias-maintenance.sh && ${EDITOR:-nano} /projects/templates/ahmyzsh/tools/alias-maintenance-report.md` |
| `alias-history` | `ls -lt /projects/templates/ahmyzsh/tools/alias-history/ | head -10` |
| `view-alias-history` | `function _view_history() { ${EDITOR:-nano} "/projects/templates/ahmyzsh/tools/alias-history/$1"; }; _view_history` |
| `compare-aliases` | `function _compare_aliases() { diff -u "/projects/templates/ahmyzsh/tools/alias-history/$1" /projects/templates/ahmyzsh/core/aliases/00000-alias-inventory.md; }; _compare_aliases` |
| `update-aliases` | `/projects/templates/ahmyzsh/tools/alias-inventory-scheduler.sh` |

### 10000-images-files.sh

Lines: 4 | Size: 145 bytes

| Alias | Command |
|-------|---------|
| `mv_tg_img` | `mkdir tmbnails; mv *_thumb* ./tmbnails; mv_imgs` |
| `tg_mv_img` | `mkdir tmbnails; mv *_thumb* ./tmbnails; mv_imgs` |

### 10001-rm.sh

Lines: 19 | Size: 636 bytes

| Alias | Command |
|-------|---------|
| `rmbuild` | `rm -fr ./build` |
| `rmdist` | `rm -fr ./dist` |
| `rmout` | `rm -fr ./out` |
| `rmnodmod` | `rm -fr ./node_modules` |
| `rmcoverage` | `rm -fr ./coverage` |
| `rmcov` | `rm -fr ./coverage` |
| `rmyarnlock` | `rm -f ./yarn.lock` |
| `rmylock` | `rm -f ./yarn.lock` |
| `rmpaklock` | `rm -f ./package-lock.json` |
| `rmshrinkwrap` | `rm -f ./npm-shrinkwrap.json` |
| `rmyerr` | `rm -f ./yarn-error.log` |
| `rmyarn` | `(rmyarnlock& rmyerr& rmnodmod&)` |
| `npmreinstall` | `(rmyarnlock& rmpaklock& rmyerr& rmnodmod& rmshrinkwrap&)` |
| `rmthumb` | `rm -fr ${HOME}/.cache/thumbnails/**` |

### 10002-cd.sh

Lines: 95 | Size: 3631 bytes

| Alias | Command |
|-------|---------|
| `cdtemp` | `cd /home/luxcium/src/temp` |
| `ctemp` | `cd /home/luxcium/src/temp` |
| `cdsrc` | `cd /home/luxcium/src` |
| `csrc` | `cd /home/luxcium/src` |
| `cddev` | `cd /home/luxcium/dev` |
| `cdev` | `cd /home/luxcium/dev` |
| `cdtmp` | `cd /tmp` |
| `ctmp` | `cd /tmp` |
| `cdetc` | `cd /etc` |
| `cetc` | `cd /etc` |
| `cdusr` | `cd /usr` |
| `cusr` | `cd /usr` |
| `cdopt` | `cd /opt` |
| `copt` | `cd /opt` |
| `cdvar` | `cd /var` |
| `cvar` | `cd /var` |
| `cdapp` | `cd /usr/share/applications/` |
| `capp` | `cd /usr/share/applications/` |
| `cmdir` | `cdir` |
| `cmtmp` | `cd $(mktemp -d)` |
| `vscacorn` | `__vsCodeTarget '\${HOME}/src/temp/acorn'` |
| `vsccli` | `__vsCodeTarget '\${HOME}/src/temp/cli'` |
| `vsceslint` | `__vsCodeTarget '\${HOME}/src/temp/eslint'` |
| `vscespree` | `__vsCodeTarget '\${HOME}/src/temp/espree'` |
| `vscfpts` | `__vsCodeTarget '\${HOME}/src/temp/fp-ts'` |
| `vscmocha` | `__vsCodeTarget '\${HOME}/src/temp/mocha'` |
| `vscnode` | `__vsCodeTarget '\${HOME}/src/temp/node'` |
| `vscPython` | `__vsCodeTarget '\${HOME}/src/temp/Python-3.9.5'` |
| `vscsyntax` | `__vsCodeTarget '\${HOME}/src/temp/syntax'` |
| `vscTypeScript` | `__vsCodeTarget '\${HOME}/src/temp/TypeScript'` |
| `vscvscode` | `__vsCodeTarget '\${HOME}/src/temp/vscode'` |
| `vscworkerpool` | `__vsCodeTarget '\${HOME}/src/temp/workerpool'` |
| `vsczsh-code` | `__vsCodeTarget '\${HOME}/src/temp/zsh-code'` |
| `vsc100-days-of-code` | `__vsCodeTarget '\${HOME}/src/100-days-of-code'` |
| `vscchroma.js` | `__vsCodeTarget '\${HOME}/src/chroma.js'` |
| `vsccolor-math` | `__vsCodeTarget '\${HOME}/src/color-math'` |
| `vschexSorter` | `__vsCodeTarget '\${HOME}/src/hexSorter'` |
| `vsciexjs` | `__vsCodeTarget '\${HOME}/src/iexjs'` |
| `vscjacobo-test` | `__vsCodeTarget '\${HOME}/src/jacobo-test'` |
| `vscnestjs-colligated-docs` | `__vsCodeTarget '\${HOME}/src/nestjs-colligated-docs'` |
| `vscpmap` | `__vsCodeTarget '\${HOME}/src/parallel-mapping'` |
| `vscregexp-tree` | `__vsCodeTarget '\${HOME}/src/regexp-tree'` |
| `vscsecond_iex` | `__vsCodeTarget '\${HOME}/src/second_iex'` |
| `vsctelegram-bot-api` | `__vsCodeTarget '\${HOME}/src/telegram-bot-api'` |
| `vscv4l2loopback` | `__vsCodeTarget '\${HOME}/src/v4l2loopback'` |

### 10003-ls.sh

Lines: 565 | Size: 37887 bytes

| Alias | Command |
|-------|---------|
| `al` | `ls -alhSvF -X` |
| `alt` | `ls -alGhSvF -rt` |
| `alu` | `ls -alGhSvF -rut` |
| `alc` | `ls -alGhSvF -rct` |
| `lsl` | `ls -AlhSvF -X` |
| `lst` | `ls -AlGhSvF -rt` |
| `lsu` | `ls -AlGhSvF -rut` |
| `lsc` | `ls -AlGhSvF -rct` |
| `ls1` | `ls -A1hSvF -X` |
| `ls1c` | `ls -A1hScvF -X` |

### 10004-cp.sh

Lines: 323 | Size: 20012 bytes

| Alias | Command |
|-------|---------|

### 10005-mv.sh

Lines: 186 | Size: 7661 bytes

| Alias | Command |
|-------|---------|
| `mvu` | `mv -uv` |

### 10006-ip.sh

Lines: 111 | Size: 4209 bytes

| Alias | Command |
|-------|---------|
| `iplist` | `sudo iptables -t filter -L` |
| `iprules` | `sudo iptables -t filter -S` |
| `ipruleslist` | `sudo iptables -t filter -S` |
| `iplinks` | `sudo ip -c -h -p -a link show` |
| `ipaddresses` | `sudo ip -c -h -p -a -4 addres show` |
| `ip6addresses` | `sudo ip -c -h -p -a -6 addres show` |
| `ip0addresses` | `sudo ip -c -h -p -a -4 -0 addres show` |
| `ipeno1reset` | `zsh \${AHMYZSH}/settings/iptables-eno1.sh` |
| `ipreset` | `zsh  \${AHMYZSH}/settings/iptables-reset.sh` |
| `ipenable` | `zsh  \${AHMYZSH}/settings/iptables-enabler.sh` |

### 11000-kill.sh

Lines: 6 | Size: 145 bytes

| Alias | Command |
|-------|---------|
| `killshot` | `kill $(pidof shotwell)` |
| `restartplasma` | `kquitapp5 plasmashell && kstart5 plasmashell` |

### 11001-dnf.sh

Lines: 1125 | Size: 36907 bytes

| Alias | Command |
|-------|---------|
| `dnfgl` | `dnf grouplist` |
| `dnfp` | `dnf info` |
| `dnfs` | `dnf search` |
| `dnfgi` | `sudo dnf groupinstall` |
| `dnfgr` | `sudo dnf groupremove` |
| `dnfmc` | `dnf makecache` |
| `dnfc` | `sudo dnf clean all` |
| `dnfmkcln` | `dnfc -v; dnfmc` |
| `distrosync` | `sudo dnf distro-sync --refresh` |
| `dnfud` | `sudo dnf upgrade --downloadonly -y --refresh` |
| `dnfpi` | `dnf info` |
| `dnfxu` | `sudo nice -n -15 ionice -c 1 -n 1 dnf upgrade` |

### 11800-plasma_shell.sh

Lines: 3 | Size: 81 bytes

| Alias | Command |
|-------|---------|
| `restart-panel` | `(killall plasmashell && plasmashell & disown)` |

### 11811-docked.sh

Lines: 222 | Size: 7827 bytes

| Alias | Command |
|-------|---------|
| `dps` | `docker ps` |
| `dpsa` | `docker ps --all` |
| `dpsa_stopped` | `docker ps -a --filter "status=exited"` |
| `dpsa_running` | `docker ps -a --filter "status=running"` |
| `dmi` | `docker images` |
| `dimg` | `docker images` |
| `dmia` | `docker images --all` |
| `dimga` | `docker images --all` |
| `drun` | `docker run` |
| `drma` | `((docker rm $(docker ps -qa))2>/dev/null|| exit 5)` |
| `drmaf` | `((docker rm --force $(docker ps -qa))2>/dev/null|| exit 5)` |
| `drmia` | `((docker rmi $(docker images -qa))2>/dev/null|| exit 5)` |
| `drmiaf` | `((docker rmi --force $(docker images -qa))2>/dev/null|| exit 5)` |
| `inspectbridge` | `docker network inspect bridge` |
| `dstart` | `docker start` |
| `dstop` | `docker stop` |
| `startdckr` | `sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec` |
| `dspxs` | `sudo docker run -it -v /home/luxcium/spx-data:/data --rm msftspeech/spx synthesize` |
| `dckr_start` | `sudo systemctl enable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec` |
| `dckr_stop` | `sudo systemctl disable containerd.service docker.socket docker.service docker-distribution.service --now; sudo systemctl daemon-reload; sudo systemctl daemon-reexec` |
| `dckr_ls_redis` | `docker container ls --filter label=redis` |
| `dckr_killall_redis` | `docker rm --force $(docker container ls --filter label=redis --quiet)` |
| `dckr_up` | `enable_containerd up;docker container ls --all --size` |
| `dckr_down` | `enable_containerd down` |
| `dckr_restart` | `enable_containerd restart;docker container ls --all --size` |
| `dckr_images` | `docker images` |
| `images` | `docker images` |
| `dckr_rm_all_images` | `docker rmi $(docker images -aq) 2> /dev/null` |
| `dckr_rm_all_images_f` | `docker rmi --force $(docker images -aq) 2> /dev/null` |
| `dckr_ps` | `docker ps -a` |
| `dckr_rm_all` | `docker rm $(docker ps -aq) 2> /dev/null` |
| `dckr_rm_all_f` | `docker rm --force $(docker ps -aq) 2> /dev/null` |
| `dckr_helloworld` | `docker run hello-world` |
| `notconnectsound` | `(play -qv 1 /usr/share/sounds/Oxygen-Im-Cant-Connect.ogg)` |
| `popsound` | `(play -qv 0.75 ${AHMYZSH}/multimedia/sounds/dactylo-cloche.mp3 & sleep 0.375;play -qv 0.50 ${AHMYZSH}/multimedia/sounds/pop-up.mp3 &)` |
| `dckr_ls_redis` | `docker container ls --filter label=redis` |
| `dckr_killall_redis` | `docker rm --force $(docker container ls --filter label=redis --quiet)` |

### 11812-redis.sh

Lines: 357 | Size: 13473 bytes

| Alias | Command |
|-------|---------|
| `red_cli` | `redis-cli` |
| `red_all` | `redis-cli --raw keys \*` |
| `smembers` | `redis-cli smembers` |
| `hgetall` | `redis-cli hgetall` |
| `hexist` | `redis-cli hexist` |
| `exists` | `redis-cli exists` |
| `pfadd` | `redis-cli PFADD` |
| `pfcount` | `redis-cli PFCOUNT` |
| `pfmerge` | `redis-cli PFMERGE` |
| `red_PFADD` | `redis-cli PFADD` |
| `red_PFCOUNT` | `redis-cli PFCOUNT` |
| `red_PFMERGE` | `redis-cli PFMERGE` |
| `red_COPY` | `redis-cli COPY` |
| `red_DEL` | `redis-cli DEL` |
| `red_DUMP` | `redis-cli DUMP` |
| `red_EXISTS` | `redis-cli EXISTS` |
| `red_EXPIRE` | `redis-cli EXPIRE` |
| `red_EXPIREAT` | `redis-cli EXPIREAT` |
| `red_KEYS` | `redis-cli KEYS` |
| `red_MIGRATE` | `redis-cli MIGRATE` |
| `red_MOVE` | `redis-cli MOVE` |
| `red_OBJECT` | `redis-cli OBJECT` |
| `red_PERSIST` | `redis-cli PERSIST` |
| `red_PEXPIRE` | `redis-cli PEXPIRE` |
| `red_PEXPIREAT` | `redis-cli PEXPIREAT` |
| `red_PTTL` | `redis-cli PTTL` |
| `red_RANDOMKEY` | `redis-cli RANDOMKEY` |
| `red_RENAME` | `redis-cli RENAME` |
| `red_RENAMENX` | `redis-cli RENAMENX` |
| `red_RESTORE` | `redis-cli RESTORE` |
| `red_SCAN` | `redis-cli SCAN` |
| `red_SORT` | `redis-cli SORT` |
| `red_TOUCH` | `redis-cli TOUCH` |
| `red_TTL` | `redis-cli TTL` |
| `red_TYPE` | `redis-cli TYPE` |
| `red_UNLINK` | `redis-cli UNLINK` |
| `red_WAIT` | `redis-cli WAIT` |
| `red_HDEL` | `redis-cli HDEL` |
| `red_HEXISTS` | `redis-cli HEXISTS` |
| `red_HGET` | `redis-cli HGET` |
| `red_HGETALL` | `redis-cli HGETALL` |
| `red_HINCRBY` | `redis-cli HINCRBY` |
| `red_HINCRBYFLOAT` | `redis-cli HINCRBYFLOAT` |
| `red_HKEYS` | `redis-cli HKEYS` |
| `red_HLEN` | `redis-cli HLEN` |
| `red_HMGET` | `redis-cli HMGET` |
| `red_HMSET` | `redis-cli HMSET` |
| `red_HSCAN` | `redis-cli HSCAN` |
| `red_HSET` | `redis-cli HSET` |
| `red_HSETNX` | `redis-cli HSETNX` |
| `red_HSTRLEN` | `redis-cli HSTRLEN` |
| `red_HVALS` | `redis-cli HVALS` |
| `red_BLMOVE` | `redis-cli BLMOVE` |
| `red_BLPOP` | `redis-cli BLPOP` |
| `red_BRPOP` | `redis-cli BRPOP` |
| `red_BRPOPLPUSH` | `redis-cli BRPOPLPUSH` |
| `red_LINDEX` | `redis-cli LINDEX` |
| `red_LINSERT` | `redis-cli LINSERT` |
| `red_LLEN` | `redis-cli LLEN` |
| `red_LMOVE` | `redis-cli LMOVE` |
| `red_LPOP` | `redis-cli LPOP` |
| `red_LPOS` | `redis-cli LPOS` |
| `red_LPUSH` | `redis-cli LPUSH` |
| `red_LPUSHX` | `redis-cli LPUSHX` |
| `red_LRANGE` | `redis-cli LRANGE` |
| `red_LREM` | `redis-cli LREM` |
| `red_LSET` | `redis-cli LSET` |
| `red_LTRIM` | `redis-cli LTRIM` |
| `red_RPOP` | `redis-cli RPOP` |
| `red_RPOPLPUSH` | `redis-cli RPOPLPUSH` |
| `red_RPUSH` | `redis-cli RPUSH` |
| `red_RPUSHX` | `redis-cli RPUSHX` |
| `red_SADD` | `redis-cli SADD` |
| `red_SCARD` | `redis-cli SCARD` |
| `red_SDIFF` | `redis-cli SDIFF` |
| `red_SDIFFSTORE` | `redis-cli SDIFFSTORE` |
| `red_SINTER` | `redis-cli SINTER` |
| `red_SINTERSTORE` | `redis-cli SINTERSTORE` |
| `red_SISMEMBER` | `redis-cli SISMEMBER` |
| `red_SMEMBERS` | `redis-cli SMEMBERS` |
| `red_SMISMEMBER` | `redis-cli SMISMEMBER` |
| `red_SMOVE` | `redis-cli SMOVE` |
| `red_SPOP` | `redis-cli SPOP` |
| `red_SRANDMEMBER` | `redis-cli SRANDMEMBER` |
| `red_SREM` | `redis-cli SREM` |
| `red_SSCAN` | `redis-cli SSCAN` |
| `red_SUNION` | `redis-cli SUNION` |
| `red_SUNIONSTORE` | `redis-cli SUNIONSTORE` |
| `red_BZPOPMAX` | `redis-cli BZPOPMAX` |
| `red_BZPOPMIN` | `redis-cli BZPOPMIN` |
| `red_ZADD` | `redis-cli ZADD` |
| `red_ZCARD` | `redis-cli ZCARD` |
| `red_ZCOUNT` | `redis-cli ZCOUNT` |
| `red_ZDIFF` | `redis-cli ZDIFF` |
| `red_ZDIFFSTORE` | `redis-cli ZDIFFSTORE` |
| `red_ZINCRBY` | `redis-cli ZINCRBY` |
| `red_ZINTER` | `redis-cli ZINTER` |
| `red_ZINTERSTORE` | `redis-cli ZINTERSTORE` |
| `red_ZLEXCOUNT` | `redis-cli ZLEXCOUNT` |
| `red_ZMSCORE` | `redis-cli ZMSCORE` |
| `red_ZPOPMAX` | `redis-cli ZPOPMAX` |
| `red_ZPOPMIN` | `redis-cli ZPOPMIN` |
| `red_ZRANGE` | `redis-cli ZRANGE` |
| `red_ZRANGEBYLEX` | `redis-cli ZRANGEBYLEX` |
| `red_ZRANGEBYSCORE` | `redis-cli ZRANGEBYSCORE` |
| `red_ZRANGESTORE` | `redis-cli ZRANGESTORE` |
| `red_ZRANK` | `redis-cli ZRANK` |
| `red_ZREM` | `redis-cli ZREM` |
| `red_ZREMRANGEBYLEX` | `redis-cli ZREMRANGEBYLEX` |
| `red_ZREMRANGEBYRANK` | `redis-cli ZREMRANGEBYRANK` |
| `red_ZREMRANGEBYSCORE` | `redis-cli ZREMRANGEBYSCORE` |
| `red_ZREVRANGE` | `redis-cli ZREVRANGE` |
| `red_ZREVRANGEBYLEX` | `redis-cli ZREVRANGEBYLEX` |
| `red_ZREVRANGEBYSCORE` | `redis-cli ZREVRANGEBYSCORE` |
| `red_ZREVRANK` | `redis-cli ZREVRANK` |
| `red_ZSCAN` | `redis-cli ZSCAN` |
| `red_ZSCORE` | `redis-cli ZSCORE` |
| `red_ZUNION` | `redis-cli ZUNION` |
| `red_ZUNIONSTORE` | `redis-cli ZUNIONSTORE` |
| `red_XACK` | `redis-cli XACK` |
| `red_XADD` | `redis-cli XADD` |
| `red_XAUTOCLAIM` | `redis-cli XAUTOCLAIM` |
| `red_XCLAIM` | `redis-cli XCLAIM` |
| `red_XDEL` | `redis-cli XDEL` |
| `red_XGROUP` | `redis-cli XGROUP` |
| `red_XINFO` | `redis-cli XINFO` |
| `red_XLEN` | `redis-cli XLEN` |
| `red_XPENDING` | `redis-cli XPENDING` |
| `red_XRANGE` | `redis-cli XRANGE` |
| `red_XREAD` | `redis-cli XREAD` |
| `red_XREADGROUP` | `redis-cli XREADGROUP` |
| `red_XREVRANGE` | `redis-cli XREVRANGE` |
| `red_XTRIM` | `redis-cli XTRIM` |
| `red_APPEND` | `redis-cli APPEND` |
| `red_BITCOUNT` | `redis-cli BITCOUNT` |
| `red_BITFIELD` | `redis-cli BITFIELD` |
| `red_BITOP` | `redis-cli BITOP` |
| `red_BITPOS` | `redis-cli BITPOS` |
| `red_DECR` | `redis-cli DECR` |
| `red_DECRBY` | `redis-cli DECRBY` |
| `red_GET` | `redis-cli GET` |
| `red_GETBIT` | `redis-cli GETBIT` |
| `red_GETRANGE` | `redis-cli GETRANGE` |
| `red_GETSET` | `redis-cli GETSET` |
| `red_INCR` | `redis-cli INCR` |
| `red_INCRBY` | `redis-cli INCRBY` |
| `red_INCRBYFLOAT` | `redis-cli INCRBYFLOAT` |
| `red_MGET` | `redis-cli MGET` |
| `red_MSET` | `redis-cli MSET` |
| `red_MSETNX` | `redis-cli MSETNX` |
| `red_PSETEX` | `redis-cli PSETEX` |
| `red_SET` | `redis-cli SET` |
| `red_SETBIT` | `redis-cli SETBIT` |
| `red_SETEX` | `redis-cli SETEX` |
| `red_SETNX` | `redis-cli SETNX` |
| `red_SETRANGE` | `redis-cli SETRANGE` |
| `red_STRALGO` | `redis-cli STRALGO` |
| `red_STRLEN` | `redis-cli STRLEN` |
| `red_PSUBSCRIBE` | `redis-cli PSUBSCRIBE` |
| `red_PUBLISH` | `redis-cli PUBLISH` |
| `red_PUBSUB` | `redis-cli PUBSUB` |
| `red_PUNSUBSCRIBE` | `redis-cli PUNSUBSCRIBE` |
| `red_SUBSCRIBE` | `redis-cli SUBSCRIBE` |
| `red_UNSUBSCRIBE` | `redis-cli UNSUBSCRIBE` |
| `red_GEOADD` | `redis-cli GEOADD` |
| `red_GEODIST` | `redis-cli GEODIST` |
| `red_GEOHASH` | `redis-cli GEOHASH` |
| `red_GEOPOS` | `redis-cli GEOPOS` |
| `red_GEORADIUS` | `redis-cli GEORADIUS` |
| `red_GEORADIUSBYMEMBER` | `redis-cli GEORADIUSBYMEMBER` |
| `red_GEOSEARCH` | `redis-cli GEOSEARCH` |
| `red_GEOSEARCHSTORE` | `redis-cli GEOSEARCHSTORE` |
| `red_CAT` | `redis-cli ACL CAT` |
| `red_DELUSER` | `redis-cli ACL DELUSER` |
| `red_GENPASS` | `redis-cli ACL GENPASS` |
| `red_GETUSER` | `redis-cli ACL GETUSER` |
| `red_HELP` | `redis-cli ACL HELP` |
| `red_LIST` | `redis-cli ACL LIST` |
| `red_LOAD` | `redis-cli ACL LOAD` |
| `red_LOG` | `redis-cli ACL LOG` |
| `red_SAVE` | `redis-cli ACL SAVE` |
| `red_SETUSER` | `redis-cli ACL SETUSER` |
| `red_USERS` | `redis-cli ACL USERS` |
| `red_WHOAMI` | `redis-cli ACL WHOAMI` |
| `red_BGREWRITEAOF` | `redis-cli BGREWRITEAOF` |
| `red_BGSAVE` | `redis-cli BGSAVE` |
| `red_COMMAND` | `redis-cli COMMAND` |
| `red_COMMAND_COUNT` | `redis-cli COMMAND COUNT` |
| `red_COMMAND_GETKEYS` | `redis-cli COMMAND GETKEYS` |
| `red_COMMAND_INFO` | `redis-cli COMMAND INFO` |
| `red_CONFIG_GET` | `redis-cli CONFIG GET` |
| `red_CONFIG_RESETSTAT` | `redis-cli CONFIG RESETSTAT` |
| `red_CONFIG_REWRITE` | `redis-cli CONFIG REWRITE` |
| `red_CONFIG_SET` | `redis-cli CONFIG SET` |
| `red_DBSIZE` | `redis-cli DBSIZE` |
| `red_DEBUG_OBJECT` | `redis-cli DEBUG OBJECT` |
| `red_DEBUG_SEGFAULT` | `redis-cli DEBUG SEGFAULT` |
| `red_FLUSHALL` | `redis-cli FLUSHALL` |
| `red_FLUSHDB` | `redis-cli FLUSHDB` |
| `red_INFO` | `redis-cli INFO` |
| `red_LASTSAVE` | `redis-cli LASTSAVE` |
| `red_LATENCY_DOCTOR` | `redis-cli LATENCY DOCTOR` |
| `red_LATENCY_GRAPH` | `redis-cli LATENCY GRAPH` |
| `red_LATENCY_HELP` | `redis-cli LATENCY HELP` |
| `red_LATENCY_HISTORY` | `redis-cli LATENCY HISTORY` |
| `red_LATENCY_LATEST` | `redis-cli LATENCY LATEST` |
| `red_LATENCY_RESET` | `redis-cli LATENCY RESET` |
| `red_LOLWUT` | `redis-cli LOLWUT` |
| `red_MEMORY_DOCTOR` | `redis-cli MEMORY DOCTOR` |
| `red_MEMORY_HELP` | `redis-cli MEMORY HELP` |
| `red_MEMORY_MALLOC-STATS` | `redis-cli MEMORY MALLOC-STATS` |
| `red_MEMORY_PURGE` | `redis-cli MEMORY PURGE` |
| `red_MEMORY_STATS` | `redis-cli MEMORY STATS` |
| `red_MEMORY_USAGE` | `redis-cli MEMORY USAGE` |
| `red_MODULE_LIST` | `redis-cli MODULE LIST` |
| `red_MODULE_LOAD` | `redis-cli MODULE LOAD` |
| `red_MODULE_UNLOAD` | `redis-cli MODULE UNLOAD` |
| `red_MONITOR` | `redis-cli MONITOR` |
| `red_PSYNC` | `redis-cli PSYNC` |
| `red_REPLICAOF` | `redis-cli REPLICAOF` |
| `red_ROLE` | `redis-cli ROLE` |
| `red_SAVE` | `redis-cli SAVE` |
| `red_SHUTDOWN` | `redis-cli SHUTDOWN` |
| `red_SLAVEOF` | `redis-cli SLAVEOF` |
| `red_SLOWLOG` | `redis-cli SLOWLOG` |
| `red_SWAPDB` | `redis-cli SWAPDB` |
| `red_SYNC` | `redis-cli SYNC` |
| `red_TIME` | `redis-cli TIME` |
| `red_AUTH` | `redis-cli AUTH` |
| `red_CLIENT_CACHING` | `redis-cli CLIENT CACHING` |
| `red_CLIENT_GETNAME` | `redis-cli CLIENT GETNAME` |
| `red_CLIENT_GETREDIR` | `redis-cli CLIENT GETREDIR` |
| `red_CLIENT_ID` | `redis-cli CLIENT ID` |
| `red_CLIENT_INFO` | `redis-cli CLIENT INFO` |
| `red_CLIENT_KILL` | `redis-cli CLIENT KILL` |
| `red_CLIENT_LIST` | `redis-cli CLIENT LIST` |
| `red_CLIENT_PAUSE` | `redis-cli CLIENT PAUSE` |
| `red_CLIENT_REPLY` | `redis-cli CLIENT REPLY` |
| `red_CLIENT_SETNAME` | `redis-cli CLIENT SETNAME` |
| `red_CLIENT_TRACKING` | `redis-cli CLIENT TRACKING` |
| `red_CLIENT_TRACKINGINFO` | `redis-cli CLIENT TRACKINGINFO` |
| `red_CLIENT_UNBLOCK` | `redis-cli CLIENT UNBLOCK` |
| `red_CLIENT_UNPAUSE` | `redis-cli CLIENT UNPAUSE` |
| `red_ECHO` | `redis-cli ECHO` |
| `red_HELLO` | `redis-cli HELLO` |
| `red_PING` | `redis-cli PING` |
| `red_QUIT` | `redis-cli QUIT` |
| `red_RESET` | `redis-cli RESET` |
| `red_SELECT` | `redis-cli SELECT` |
| `red_CLSTR_ADDSLOTS` | `redis-cli CLUSTER ADDSLOTS` |
| `red_CLSTR_BUMPEPOCH` | `redis-cli CLUSTER BUMPEPOCH` |
| `red_CLSTR_COUNT-FAILURE-REPORTS` | `redis-cli CLUSTER COUNT-FAILURE-REPORTS` |
| `red_CLSTR_COUNTKEYSINSLOT` | `redis-cli CLUSTER COUNTKEYSINSLOT` |
| `red_CLSTR_DELSLOTS` | `redis-cli CLUSTER DELSLOTS` |
| `red_CLSTR_FAILOVER` | `redis-cli CLUSTER FAILOVER` |
| `red_CLSTR_FLUSHSLOTS` | `redis-cli CLUSTER FLUSHSLOTS` |
| `red_CLSTR_FORGET` | `redis-cli CLUSTER FORGET` |
| `red_CLSTR_GETKEYSINSLOT` | `redis-cli CLUSTER GETKEYSINSLOT` |
| `red_CLSTR_INFO` | `redis-cli CLUSTER INFO` |
| `red_CLSTR_KEYSLOT` | `redis-cli CLUSTER KEYSLOT` |
| `red_CLSTR_MEET` | `redis-cli CLUSTER MEET` |
| `red_CLSTR_MYID` | `redis-cli CLUSTER MYID` |
| `red_CLSTR_NODES` | `redis-cli CLUSTER NODES` |
| `red_CLSTR_REPLICAS` | `redis-cli CLUSTER REPLICAS` |
| `red_CLSTR_REPLICATE` | `redis-cli CLUSTER REPLICATE` |
| `red_CLSTR_RESET` | `redis-cli CLUSTER RESET` |
| `red_CLSTR_SAVECONFIG` | `redis-cli CLUSTER SAVECONFIG` |
| `red_CLSTR_SET-CONFIG-EPOCH` | `redis-cli CLUSTER SET-CONFIG-EPOCH` |
| `red_CLSTR_SETSLOT` | `redis-cli CLUSTER SETSLOT` |
| `red_CLSTR_SLAVES` | `redis-cli CLUSTER SLAVES` |
| `red_CLSTR_SLOTS` | `redis-cli CLUSTER SLOTS` |
| `red_READONLY` | `redis-cli READONLY` |
| `red_READWRITE` | `redis-cli READWRITE` |
| `red_DISCARD` | `redis-cli DISCARD` |
| `red_EXEC` | `redis-cli EXEC` |
| `red_MULTI` | `redis-cli MULTI` |
| `red_UNWATCH` | `redis-cli UNWATCH` |
| `red_WATCH` | `redis-cli WATCH` |
| `red_EVAL` | `redis-cli EVAL` |
| `red_EVALSHA` | `redis-cli EVALSHA` |
| `red_SCRIPT_DEBUG` | `redis-cli SCRIPT DEBUG` |
| `red_SCRIPT_EXISTS` | `redis-cli SCRIPT EXISTS` |
| `red_SCRIPT_FLUSH` | `redis-cli SCRIPT FLUSH` |
| `red_SCRIPT_KILL` | `redis-cli SCRIPT KILL` |
| `red_SCRIPT_LOAD` | `redis-cli SCRIPT LOAD` |

### 12000-systemctl.sh

Lines: 56 | Size: 2665 bytes

| Alias | Command |
|-------|---------|
| `reboot-multi` | `sudo systemctl set-default multi-user.target; /sbin/reboot` |
| `reboot-graphical` | `sudo systemctl set-default graphical.target /sbin/reboot` |
| `reboot-maintenance` | `sudo systemctl set-default multi-user.target; sudo systemctl reboot` |
| `reboot-firmware-maintenance` | `sudo systemctl set-default multi-user.target; sudo systemctl reboot --firmware-setup` |
| `reboot-firmware` | `sudo systemctl reboot --firmware-setup` |
| `reboot-desktop` | `sudo systemctl set-default graphical.target; sudo systemctl reboot` |
| `reboot-back` | `sudo systemctl set-default graphical.target; sudo systemctl reboot` |
| `redis_6379` | `sudo nice -n -15 ionice -c 1 -n 2 systemctl enable redis_6379 --now` |
| `redis_6379_on` | `sudo nice -n -15 ionice -c 1 -n 2 systemctl enable redis_6379 --now` |
| `redis_6379_off` | `sudo nice -n -15 ionice -c 1 -n 2 systemctl disable redis_6379 --now` |

### 12010-ALS-cht-sh.sh

Lines: 3 | Size: 70 bytes

| Alias | Command |
|-------|---------|
| `cht` | `env PAGER="/usr/bin/less -Ks" cht.sh --shell` |

### 12010-ALS-git.sh

Lines: 332 | Size: 11492 bytes

| Alias | Command |
|-------|---------|
| `check` | `git checkout master` |
| `add` | `git add -u --renormalize -v .` |
| `addall` | `git add --all --renormalize -v .` |
| `check-master` | `git checkout master` |
| `check-luxcium` | `git checkout luxcium` |
| `push` | `git push --tags --progress; git push --all --progress; fetch` |
| `gs` | `git fetch -t;  git gc; git status` |
| `pull` | `git pull --all -vt` |
| `fetch` | `git fetch -t; git fetch --all -v -u` |
| `lb` | `git branch -a -v --color | cat` |
| `pullmaster` | `git checkout master; git pull -S --stat --progress --signoff --tags origin master` |
| `tidy` | `git config --local user.name "Luxcium (Benjamin Vincent)"; git config --local user.email "luxcium@users.noreply.github.com"` |
| `g` | `git` |
| `ga` | `git add` |
| `gaa` | `git add --all` |
| `gapa` | `git add --patch` |
| `gau` | `git add --update` |
| `gav` | `git add --verbose` |
| `gap` | `git apply` |
| `gapt` | `git apply --3way` |
| `gb` | `git branch` |
| `gba` | `git branch -a` |
| `gbd` | `git branch -d` |
| `gbda` | `git branch --no-color --merged | command grep -vE "^(\+|\*|\s*($(git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d` |
| `gbD` | `git branch -D` |
| `gbl` | `git blame -b -w` |
| `gbnm` | `git branch --no-merged` |
| `gbr` | `git branch --remote` |
| `gbs` | `git bisect` |
| `gbsb` | `git bisect bad` |
| `gbsg` | `git bisect good` |
| `gbsr` | `git bisect reset` |
| `gbss` | `git bisect start` |
| `gc` | `git commit -v` |
| `gc!` | `git commit -v --amend` |
| `gcn!` | `git commit -v --no-edit --amend` |
| `gca` | `git commit -v -a` |
| `gca!` | `git commit -v -a --amend` |
| `gcan!` | `git commit -v -a --no-edit --amend` |
| `gcans!` | `git commit -v -a -s --no-edit --amend` |
| `gcam` | `git commit -a -m` |
| `gcsm` | `git commit -s -m` |
| `gcb` | `git checkout -b` |
| `gcf` | `git config --list` |
| `gcl` | `git clone --recurse-submodules` |
| `gclean` | `git clean -id` |
| `gpristine` | `git reset --hard && git clean -dffx` |
| `gcm` | `git checkout $(git_main_branch)` |
| `gcd` | `git checkout develop` |
| `gcmsg` | `git commit -m` |
| `gco` | `git checkout` |
| `gcount` | `git shortlog -sn` |
| `gcp` | `git cherry-pick` |
| `gcpa` | `git cherry-pick --abort` |
| `gcpc` | `git cherry-pick --continue` |
| `gcs` | `git commit -S` |
| `gd` | `git diff` |
| `gdca` | `git diff --cached` |
| `gdcw` | `git diff --cached --word-diff` |
| `gdct` | `git describe --tags $(git rev-list --tags --max-count=1)` |
| `gds` | `git diff --staged` |
| `gdt` | `git diff-tree --no-commit-id --name-only -r` |
| `gdw` | `git diff --word-diff` |
| `gf` | `git fetch` |
| `gfa` | `git fetch --all --prune` |
| `gfo` | `git fetch origin` |
| `gfg` | `git ls-files | grep` |
| `gg` | `git gui citool` |
| `gga` | `git gui citool --amend` |
| `ggpur` | `ggu` |
| `ggpull` | `git pull origin "$(git_current_branch)"` |
| `ggpush` | `git push origin "$(git_current_branch)"` |
| `ggsup` | `git branch --set-upstream-to=origin/$(git_current_branch)` |
| `gpsup` | `git push --set-upstream origin $(git_current_branch)` |
| `ghh` | `git help` |
| `gignore` | `git update-index --assume-unchanged` |
| `gignored` | `git ls-files -v | grep "^[[:lower:]]"` |
| `git-svn-dcommit-push` | `git svn dcommit && git push github $(git_main_branch):svntrunk` |
| `gk` | `\gitk --all --branches` |
| `gke` | `\gitk --all $(git log -g --pretty=%h)` |
| `gl` | `git pull` |
| `glg` | `git log --stat` |
| `glgp` | `git log --stat -p` |
| `glgg` | `git log --graph` |
| `glgga` | `git log --graph --decorate --all` |
| `glgm` | `git log --graph --max-count=10` |
| `glo` | `git log --oneline --decorate` |
| `glol` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'` |
| `glols` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat` |
| `glod` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'` |
| `glods` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short` |
| `glola` | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all` |
| `glog` | `git log --oneline --decorate --graph` |
| `gloga` | `git log --oneline --decorate --graph --all` |
| `glp` | `_git_log_prettily` |
| `gm` | `git merge` |
| `gmom` | `git merge origin/$(git_main_branch)` |
| `gmt` | `git mergetool --no-prompt` |
| `gmtvim` | `git mergetool --no-prompt --tool=vimdiff` |
| `gmum` | `git merge upstream/$(git_main_branch)` |
| `gma` | `git merge --abort` |
| `gp` | `git push` |
| `gpd` | `git push --dry-run` |
| `gpf` | `git push --force-with-lease` |
| `gpf!` | `git push --force` |
| `gpoat` | `git push origin --all && git push origin --tags` |
| `gpu` | `git push upstream` |
| `gpv` | `git push -v` |
| `gr` | `git remote` |
| `gra` | `git remote add` |
| `grb` | `git rebase` |
| `grba` | `git rebase --abort` |
| `grbc` | `git rebase --continue` |
| `grbd` | `git rebase develop` |
| `grbi` | `git rebase -i` |
| `grbm` | `git rebase $(git_main_branch)` |
| `grbs` | `git rebase --skip` |
| `grev` | `git revert` |
| `grh` | `git reset` |
| `grhh` | `git reset --hard` |
| `groh` | `git reset origin/$(git_current_branch) --hard` |
| `grm` | `git rm` |
| `grmc` | `git rm --cached` |
| `grmv` | `git remote rename` |
| `grrm` | `git remote remove` |
| `grs` | `git restore` |
| `grset` | `git remote set-url` |
| `grss` | `git restore --source` |
| `grt` | `cd "$(git rev-parse --show-toplevel || echo .)"` |
| `gru` | `git reset --` |
| `grup` | `git remote update` |
| `grv` | `git remote -v` |
| `gsb` | `git status -sb` |
| `gsd` | `git svn dcommit` |
| `gsh` | `git show` |
| `gsi` | `git submodule init` |
| `gsps` | `git show --pretty=short --show-signature` |
| `gsr` | `git svn rebase` |
| `gss` | `git status -s` |
| `gst` | `git status` |
| `gstaa` | `git stash apply` |
| `gstc` | `git stash clear` |
| `gstd` | `git stash drop` |
| `gstl` | `git stash list` |
| `gstp` | `git stash pop` |
| `gsts` | `git stash show --text` |
| `gstu` | `git stash --include-untracked` |
| `gstall` | `git stash --all` |
| `gsu` | `git submodule update` |
| `gsw` | `git switch` |
| `gswc` | `git switch -c` |
| `gts` | `git tag -s` |
| `gtv` | `git tag | sort -V` |
| `gunignore` | `git update-index --no-assume-unchanged` |
| `gunwip` | `git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1` |
| `gup` | `git pull --rebase` |
| `gupv` | `git pull --rebase -v` |
| `gupa` | `git pull --rebase --autostash` |
| `gupav` | `git pull --rebase --autostash -v` |
| `glum` | `git pull upstream $(git_main_branch)` |
| `gwch` | `git whatchanged -p --abbrev-commit --pretty=medium` |
| `gwip` | `git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"` |
| `gam` | `git am` |
| `gamc` | `git am --continue` |
| `gams` | `git am --skip` |
| `gama` | `git am --abort` |
| `gamscp` | `git am --show-current-patch` |

### 12010-ALS-npm.sh

Lines: 24 | Size: 1698 bytes

| Alias | Command |
|-------|---------|
| `uninstallnpmglobal` | `unpnpmupdate && unnpmupdate` |
| `lsg` | `npm list -g --depth 0;yarn global list` |
| `npmu` | `npm install -g npm@latest` |
| `pnpmupdate` | `pnpm -g i ${npmglobal}` |
| `npmupdate` | `npm -g i npm@latest ${npmglobal}` |
| `unnpmupdate` | `npm -g un pnpm ${unnpmglobal}` |
| `unpnpmupdate` | `pnpm -g un npm ${unnpmglobal} pnpm` |
| `installnpmglobal` | `npm i -g npm@latest && npm i -g pnpm@latest && NPMupdate && PNPMupdate` |
| `reinstallnpmglobal` | `uninstallnpmglobal && echo "\n\n==============================\n\n" && installNPMGlobal && pnpm i -g pnpm` |
| `nlist` | `npm list -g --depth 0` |
| `npmcibuild` | `rmnodmod;rmout;rmbuild;npm upgrade||npm install;npm run cibuild && git add .` |
| `cibuild` | `npmcibuild` |

### 12010-ALS-tsc.sh

Lines: 4 | Size: 63 bytes

| Alias | Command |
|-------|---------|
| `tscx` | `npx tsc` |
| `tscw` | `npx tsc --watch` |

### 12010-ALS-vscode.sh

Lines: 62 | Size: 2196 bytes

| Alias | Command |
|-------|---------|
| `sample-dirs-folders` | `bash <(curl -s https://gist.githubusercontent.com/Luxcium/7fba257aa83ef47ecb8e1b811e2d7cf2/raw/527e7d10a519ebbc876426461f07c1533fbe7292/dirs-material-icon-theme-PKief-4.5.0.sh)` |
| `newvsportable` | `bash <(curl -s   https://gist.githubusercontent.com/Luxcium/7357d34622c148f6041842321f315d7a/raw/a758b82e6818b9b9b664b210228ea93f9314c1b4/luxcium-vscode-portable.sh)` |
| `vsportablenew` | `newvsportable` |
| `portablevsnew` | `newvsportable` |
| `portablevs` | `newvsportable` |
| `vsca` | `${VSCODE} --add` |
| `vscd` | `${VSCODE} --diff` |
| `vscg` | `${VSCODE} --goto` |
| `vscn` | `${VSCODE} --new-window` |
| `vscr` | `${VSCODE} --reuse-window` |
| `vscw` | `${VSCODE} --wait` |
| `vscu` | `${VSCODE} --user-data-dir` |
| `vsced` | `${VSCODE} --extensions-dir` |
| `vscie` | `${VSCODE} --install-extension` |
| `vscue` | `${VSCODE} --uninstall-extension` |
| `vscv` | `${VSCODE} --verbose` |
| `vscl` | `${VSCODE} --log` |
| `vscde` | `${VSCODE} --disable-extensions` |
| `ivsc` | `${ISCODE} .` |
| `ivsca` | `${ISCODE} --add` |
| `ivscd` | `${ISCODE} --diff` |
| `ivscg` | `${ISCODE} --goto` |
| `ivscn` | `${ISCODE} --new-window` |
| `ivscr` | `${ISCODE} --reuse-window` |
| `ivscw` | `${ISCODE} --wait` |
| `ivscu` | `${ISCODE} --user-data-dir` |
| `ivsced` | `${ISCODE} --extensions-dir` |
| `ivscie` | `${ISCODE} --install-extension` |
| `ivscue` | `${ISCODE} --uninstall-extension` |
| `ivscv` | `${ISCODE} --verbose` |
| `ivscl` | `${ISCODE} --log` |
| `ivscde` | `${ISCODE} --disable-extensions` |

### 12010-ALS-yarn.sh

Lines: 56 | Size: 3563 bytes

| Alias | Command |
|-------|---------|
| `yarnstart` | `yarn start` |
| `ystart` | `yarn start` |
| `yarnglobalupdate` | `yarn global add @nestjs/cli@latest bash-language-server@latest concurrently@latest create-react-app@latest eslint@latest eslint-config-prettier@latest install-peerdeps@latest npm-check@latest npm-check-unused@latest npm-check-updates@latest pnpm@latest prettier@latest serve@latest shelljs@latest shx@latest standard-version@latest ts-node@latest typescript@latest vsce@latest yarn@latest` |
| `yi` | `yg; yi1 ; yi2' # yi3` |
| `yarn2` | `yarn set version berry 1>& /dev/null || yarn set version latest; yarn install --immutable --immutable-cache;  yarn stage --commit; git add .yarn* package.json yarn.lock; git commit -m "yarn update";push` |
| `yi1` | `concurrently  "rm yarn.lock" "rm -f package-lock.json" "rm -f pnpm-lock.yaml" "rm -rf node_modules"` |
| `yi2` | `yarn install --force --audit --link-duplicates --check-files;` |
| `ya` | `yarn add --exact --audit --force --link-duplicates --check-files --no-progress` |
| `yb` | `yarn run build --force` |
| `yt` | `yarn run test` |
| `ys` | `yarn start` |
| `build` | `yarn run build` |
| `quick` | `yarn run quick` |
| `tests` | `yarn run test` |
| `rebuild` | `yarn run rebuild` |
| `debug` | `yarn run debug` |
| `start` | `yarn run start` |

### 12012-ALS-sounds.sh

Lines: 1592 | Size: 75029 bytes

| Alias | Command |
|-------|---------|
| `play_NTV_startup_C9_Long_version` | `(play -qv 0.5 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_startup_C9_Long_version.ogg")` |
| `play_NTV_startup_C9_small_version` | `(play -qv 0.3 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_startup_C9_short_version.ogg")` |
| `play_NTV_error_tv3` | `(play -qv 0.2 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_error_tv3.ogg")` |
| `play_NTV_information_t5` | `(play -qv 0.3 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_information_t5.ogg")` |
| `play_NTV_logout_a3` | `(play -qv 0.5 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_logout_a3.ogg")` |
| `play_NTV_question_btv` | `(play -qv 0.5 "${LOCALSOUNDS}/35889-nostalgia-tv/NTV_question_btv.ogg")` |
| `play_osx1_0008_buddy_online` | `(play -qv 0.5 "${LOCALSOUNDS}/39662-KDEonOSX1/0008_Buddy_Online.flac")` |
| `play_osx1_0009_start` | `(play -qv 0.8 "${LOCALSOUNDS}/39662-KDEonOSX1/0009_Start.flac")` |
| `play_osx1_0010_device_ejected` | `(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0010_Device_Ejected.flac")` |
| `play_osx1_0011_device_detected` | `(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0011_Device_Detected.flac")` |
| `play_osx1_0012_critical_chronicles` | `(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0012_Critical_Chronicles.flac")` |
| `play_osx1_0013_clubbed_to_death` | `(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0013_Clubbed_to_death.flac")` |
| `play_osx1_0014_attention` | `(play -qv 0.1 "${LOCALSOUNDS}/39662-KDEonOSX1/0014_Attention.flac")` |
| `play_osx2_0006_parting_is_such_sweet_sorrow` | `(play -qv 0.5 "${LOCALSOUNDS}/39663-KDEonOSX2/0006_Parting_is_such_sweet_sorrow.flac")` |
| `play_osx2_0002_assend_attention` | `(play -qv 0.1 "${LOCALSOUNDS}/39663-KDEonOSX2/0002_Assend_Attention.flac")` |
| `play_osx2_0004_hey_there` | `(play -qv 0.5 "${LOCALSOUNDS}/39663-KDEonOSX2/0004_Hey_There.flac")` |
| `play_osx2_0001_cute` | `(play -qv 0.1 "${LOCALSOUNDS}/39663-KDEonOSX2/0001_Cute.flac")` |
| `play_osx2_0003_trash1` | `(play -qv 0.5 "${LOCALSOUNDS}/39663-KDEonOSX2/0003_Trash1.flac")` |
| `play_osx2_0005_old_school2` | `(play -qv 0.2 "${LOCALSOUNDS}/39663-KDEonOSX2/0005_Old_School2.flac")` |
| `play_osx2_0007_old_school1` | `(play -qv 0.2 "${LOCALSOUNDS}/39663-KDEonOSX2/0007_Old_School1.flac")` |
| `play_check-click` | `(play -qv 0.5 "${LOCALSOUNDS}/ater/001_check-click.mp3")` |
| `play_etc-dialog` | `(play -qv 0.5 "${LOCALSOUNDS}/ater/002_etc-dialog.mp3")` |
| `play_menu-select-b` | `(play -qv 0.9 "${LOCALSOUNDS}/ater/003_menu-select-b.mp3")` |
| `play_menu-select-a` | `(play -qv 0.9 "${LOCALSOUNDS}/ater/004_menu-select-a.mp3")` |
| `play_warning-dialog` | `(play -qv 0.9 "${LOCALSOUNDS}/ater/005_warning-dialog.mp3")` |
| `play_ask-dialog` | `(play -qv 0.5 "${LOCALSOUNDS}/ater/006_ask-dialog.mp3")` |
| `play_error-dialog` | `(play -qv 0.5 "${LOCALSOUNDS}/ater/007_error-dialog.mp3")` |
| `play_information-dialog` | `(play -qv 0.9 "${LOCALSOUNDS}/ater/008_information-dialog.mp3")` |
| `play_login-a` | `(play -qv 0.5 "${LOCALSOUNDS}/ater/009_login-a.mp3")` |
| `play_logout-a` | `(play -qv 0.5 "${LOCALSOUNDS}/ater/010_logout-a.mp3")` |
| `play_message-new-email` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/_message-new-email.ogg")` |
| `play1_audio-volume-change` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/audio-volume-change.ogg")` |
| `play2_battery-low` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/battery-low.ogg")` |
| `play1_bell` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/bell.ogg")` |
| `play1_button-pressed` | `(play -qv 0.1 "${LOCALSOUNDS}/enchanted/stereo/button-pressed.ogg")` |
| `play_button-released` | `(play -qv 0.1 "${LOCALSOUNDS}/enchanted/stereo/button-released.ogg")` |
| `play1_button-toggle-off` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/button-toggle-off.ogg")` |
| `play1_button-toggle-on` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/button-toggle-on.ogg")` |
| `play_complete1` | `(play -qv 0.3 "${LOCALSOUNDS}/enchanted/stereo/complete.ogg")` |
| `play_count-down1` | `(play -qv 0.2 "${LOCALSOUNDS}/enchanted/stereo/count-down.ogg")` |
| `play1_desktop-login` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/desktop-login.ogg")` |
| `play_desktop-switch-left` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/desktop-switch-left.ogg")` |
| `play_desktop-switch-right` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/desktop-switch-right.ogg")` |
| `play_device-added` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/device-added.ogg")` |
| `play_device-removed` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/device-removed.ogg")` |
| `play1_dialog-error` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-error.ogg")` |
| `play1_dialog-information` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-information.ogg")` |
| `play1_dialog-question` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-question.ogg")` |
| `play1_dialog-warning` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/dialog-warning.ogg")` |
| `playnegative` | `(play_Sys-App-Negative&; sleep 0.5; play_Sys-App-Negative&; sleep 0.85; play_Sys-App-Negative&; sleep 0.85; play_Sys-App-Negative)` |
| `playpositive` | `(play_Sys-App-Positive&; sleep 0.5; play_Sys-App-Positive&; sleep 0.85; play_Sys-App-Positive&; sleep 0.85; play_Sys-App-Positive)` |
| `playwarning` | `(play_Sys-Warning&; sleep 0.5; play_Sys-Warning&; sleep 0.85; play_Sys-Warning&; sleep 0.85; play_Sys-Warning)` |
| `playcritical` | `(play_Sys-App-Error-Critical&; sleep 0.5; play_Sys-App-Error-Critical&; sleep 0.85; play_Sys-App-Error-Critical&; sleep 0.85; play_Sys-App-Error-Critical)` |
| `play1_link-pressed` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/link-pressed.ogg")` |
| `play_menu-popdown` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/menu-popdown.ogg")` |
| `play1_menu-popup` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/menu-popup.ogg")` |
| `play_menu-replace` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/menu-replace.ogg")` |
| `play1_message-new-instant` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/message-new-instant.ogg")` |
| `play_message-sent-instant` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/message-sent-instant.ogg")` |
| `play1_notebook-tab-changed` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/notebook-tab-changed.ogg")` |
| `play1_phone-incoming-call` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/phone-incoming-call.ogg")` |
| `play1_phone-outgoing-calling` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/phone-outgoing-calling.ogg")` |
| `play1_phone-outgoing-busy` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/phone-outgoing-busy.ogg")` |
| `play1_system-ready` | `(play -qv 0.2 "${LOCALSOUNDS}/enchanted/stereo/system-ready.ogg")` |
| `play1_trash-empty` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/trash-empty.ogg")` |
| `play1_window-attention-active` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-attention-active.ogg")` |
| `play1_window-attention-inactive` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-attention-inactive.ogg")` |
| `play1_window-close` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-close.ogg")` |
| `play1_window-maximized` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-maximized.ogg")` |
| `play1_window-minimized` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-minimized.ogg")` |
| `play1_window-slide` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-slide.ogg")` |
| `play1_window-switch` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-switch.ogg")` |
| `play1_window-unmaximized` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-unmaximized.ogg")` |
| `play_window-unminimized` | `(play -qv 0.5 "${LOCALSOUNDS}/enchanted/stereo/window-unminimized.ogg")` |
| `play_kdemod-error` | `(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - Error.ogg")` |
| `play_kdemod-general-system-message` | `(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - General System Message.ogg")` |
| `play_kdemod-im-buddy-offline` | `(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Buddy Offline.ogg")` |
| `play_kdemod-im-buddy-online` | `(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Buddy Online.ogg")` |
| `play_kdemod-im-message-received` | `(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Message Received.ogg")` |
| `play_kdemod-im-message-sent` | `(play -qv 0.9 "${LOCALSOUNDS}/kde-mod/KDEmod - IM Message Sent.ogg")` |
| `play_kdemod-login-tune-long-version` | `(play -qv 0.1 "${LOCALSOUNDS}/kde-mod/KDEmod - Login Tune (long version).ogg")` |
| `play_kdemod-login-tune-short-version` | `(play -qv 0.1 "${LOCALSOUNDS}/kde-mod/KDEmod - Login Tune (short version).ogg")` |
| `play_kdemod-logoff-tune` | `(play -qv 0.5 "${LOCALSOUNDS}/kde-mod/KDEmod - Logoff Tune.ogg")` |
| `play_kdemod-new-e-maill` | `(play -qv 0.8 "${LOCALSOUNDS}/kde-mod/KDEmod - New E-Maill.ogg")` |
| `play_kdemod-question` | `(play -qv 0.9 "${LOCALSOUNDS}/kde-mod/KDEmod - Question.ogg")` |
| `play1_battery-low` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/battery-low.ogg")` |
| `play2_bell` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/bell.ogg")` |
| `play_camera-shutter` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/camera-shutter.ogg")` |
| `play_complete2` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/complete.ogg")` |
| `play_desktop-screen-lock` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/desktop-screen-lock.ogg")` |
| `play_desktop-screen-unlock` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/desktop-screen-unlock.ogg")` |
| `play2_dialog-error` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/dialog-error.ogg")` |
| `play2_dialog-information` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/dialog-information.ogg")` |
| `play1_power-plug` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/power-plug.ogg")` |
| `play1_power-unplug` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/power-unplug.ogg")` |
| `play_screen-capture` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/screen-capture.ogg")` |
| `play2_system-ready` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/system-ready.ogg")` |
| `play2_trash-empty` | `(play -qv 0.5 "${LOCALSOUNDS}/miui/trash-empty.ogg")` |
| `play_Im-Cant-Connect` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Cant-Connect.ogg")` |
| `play_Im-Connection-Lost` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Connection-Lost.ogg")` |
| `play_Im-Contact-In` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Contact-In.ogg")` |
| `play_Im-Contact-Out` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Contact-Out.ogg")` |
| `play_Im-Error-On-Connection` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Error-On-Connection.ogg")` |
| `play_Im-Highlight-Msg` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Highlight-Msg.ogg")` |
| `play_Im-Internal-Error` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Internal-Error.ogg")` |
| `play_Im-Irc-Event` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Irc-Event.ogg")` |
| `play_Im-Low-Priority-Message` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Low-Priority-Message.ogg")` |
| `play_Im-Message-In` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Message-In.ogg")` |
| `play_Im-Message-Out` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Message-Out.ogg")` |
| `play_Im-Network-Problems` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Network-Problems.ogg")` |
| `play_Im-New-Mail` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-New-Mail.ogg")` |
| `play_Im-Nudge` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Nudge.ogg")` |
| `play_Im-Phone-Ring` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Phone-Ring.ogg")` |
| `play_Im-Sms` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-Sms.ogg")` |
| `play_Im-User-Auth` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Im-User-Auth.ogg")` |
| `play_K3B-Finish-Error` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-K3B-Finish-Error.ogg")` |
| `play_K3B-Finish-Success` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-K3B-Finish-Success.ogg")` |
| `play_K3B-Insert-Medium` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-K3B-Insert-Medium.ogg")` |
| `play_Sys-App-Error` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error.ogg")` |
| `play_Sys-App-Error-Critical` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error-Critical.ogg")` |
| `play_Sys-App-Error-Serious` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error-Serious.ogg")` |
| `play_Sys-App-Error-Serious-Very` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Error-Serious-Very.ogg")` |
| `play_Sys-App-Message` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Message.ogg")` |
| `play_Sys-App-Negative` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Negative.ogg")` |
| `play_Sys-App-Positive` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-App-Positive.ogg")` |
| `play_Sys-Error-Printing` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Error-Printing.ogg")` |
| `play_Sys-File-Open-Foes` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-File-Open-Foes.ogg")` |
| `play_Sys-List-End` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-List-End.ogg")` |
| `play_Sys-List-Match-Multiple` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-List-Match-Multiple.ogg")` |
| `play_Sys-List-Match-No` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-List-Match-No.ogg")` |
| `play_Sys-Log-In` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-In.ogg")` |
| `play_Sys-Log-In-Long` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-In-Long.ogg")` |
| `play_Sys-Log-In-Short` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-In-Short.ogg")` |
| `play_Sys-Log-Out` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Log-Out.ogg")` |
| `play_Sys-Question` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Question.ogg")` |
| `play_Sys-Special` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Special.ogg")` |
| `play_Sys-Trash-Emptied` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Trash-Emptied.ogg")` |
| `play_Sys-Warning` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Sys-Warning.ogg")` |
| `play_Window-All-Desktops` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-All-Desktops.ogg")` |
| `play_Window-All-Desktops-Not` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-All-Desktops-Not.ogg")` |
| `play_Window-Close` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Close.ogg")` |
| `play_Window-Maximize` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Maximize.ogg")` |
| `play_Window-Minimize` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Minimize.ogg")` |
| `play_Window-Move` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Move.ogg")` |
| `play_Window-Move-Stop` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Move-Stop.ogg")` |
| `play_Window-Shade-Down` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Shade-Down.ogg")` |
| `play_Window-Shade-Up` | `(play -qv 0.5 "${SYSOUNDS}/Oxygen-Window-Shade-Up.ogg")` |
| `play_001` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/001.mp3")` |
| `play_010` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/010.mp3")` |
| `play_011` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/011.mp3")` |
| `play_012` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/012.mp3")` |
| `play_013` | `(play -qv 0.1 "${LOCALSOUNDS}/pc-libre/013.mp3")` |
| `play_014` | `(play -qv 0.1 "${LOCALSOUNDS}/pc-libre/014.mp3")` |
| `play_015` | `(play -qv 0.3 "${LOCALSOUNDS}/pc-libre/015.mp3")` |
| `play_016` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/016.mp3")` |
| `play_017` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/017.mp3")` |
| `play_018` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/018.mp3")` |
| `play_019` | `(play -qv 0.9 "${LOCALSOUNDS}/pc-libre/019.mp3")` |
| `play_002` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/02.mp3")` |
| `play_0020` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/020.mp3")` |
| `play_0021` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/021.mp3")` |
| `play_0022` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/022.mp3")` |
| `play_0023` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/023.mp3")` |
| `play_003` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/03.mp3")` |
| `play_04` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/04.mp3")` |
| `play_05` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/05.mp3")` |
| `play_06` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/06.mp3")` |
| `play_07` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/07.mp3")` |
| `play_08` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/08.mp3")` |
| `play_09` | `(play -qv 0.5 "${LOCALSOUNDS}/pc-libre/09.mp3")` |
| `play5_ringtone-1` | `(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 1 by Markospoko.wav")` |
| `play5_ringtone-2` | `(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 2.1 by Markospoko.wav")` |
| `play5_ringtone-3` | `(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 2.2 by Markospoko.wav")` |
| `play5_ringtone-4` | `(play -qv 0.1 "${LOCALSOUNDS}/Ringtones/Ringtone 3 by Markospoko.wav")` |
| `play_audio-channel-front-center` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-front-center.oga")` |
| `play_audio-channel-front-left` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-front-left.oga")` |
| `play_audio-channel-front-right` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-front-right.oga")` |
| `play_audio-channel-rear-center` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-rear-center.oga")` |
| `play_audio-channel-rear-right` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-rear-right.oga")` |
| `play_audio-channel-rear-left` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-rear-left.oga")` |
| `play_audio-channel-side-right` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-side-right.oga")` |
| `play_audio-channel-side-left` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-channel-side-left.oga")` |
| `play_desktop-login4` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/__desktop-login.oga")` |
| `play_desktop-login5` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/_desktop-login.oga")` |
| `play_message-new-email` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/_message-new-email.oga")` |
| `play_window-unminimized` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/_window-unminimized.oga")` |
| `play_audio-volume-change` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/audio-volume-change.oga")` |
| `play_battery-caution` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/battery-caution.oga")` |
| `play_battery-full` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/battery-full.oga")` |
| `play3_battery-low` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/battery-low.oga")` |
| `play2_button-pressed` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-pressed.oga")` |
| `play_button-released` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-released.oga")` |
| `play2_button-toggle-off` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-toggle-off.oga")` |
| `play2_button-toggle-on` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/button-toggle-on.oga")` |
| `play_count-down2` | `(play -qv 0.3 "${LOCALSOUNDS}/smooth/stereo/count-down.oga")` |
| `play2_desktop-login` | `(play -qv 0.3 "${LOCALSOUNDS}/smooth/stereo/desktop-login.oga")` |
| `play_desktop-logout` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/desktop-logout.oga")` |
| `play_desktop-switch-left` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/desktop-switch-left.oga")` |
| `play_desktop-switch-right` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/desktop-switch-right.oga")` |
| `play_device-added` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/device-added.oga")` |
| `play_device-removed` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/device-removed.oga")` |
| `play3_dialog-error` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-error.oga")` |
| `play3_dialog-information` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-information.oga")` |
| `play2_dialog-question` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-question.oga")` |
| `play3_dialog-warning` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/dialog-warning.oga")` |
| `play_link-pressed` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/link-pressed.oga")` |
| `play1_menu-popdown` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/menu-popdown.oga")` |
| `play_menu-popup` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/menu-popup.oga")` |
| `play1_menu-replace` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/menu-replace.oga")` |
| `play_message-new-email` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-new-email.oga")` |
| `play_message-new-instant` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-new-instant.oga")` |
| `play1_message-sent-email` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-sent-email.oga")` |
| `play1_message-sent-instant` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/message-sent-instant.oga")` |
| `play_network-connectivity-established` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/network-connectivity-established.oga")` |
| `play_network-connectivity-error` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/network-connectivity-error.oga")` |
| `play_network-connectivity-lost` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/network-connectivity-lost.oga")` |
| `play_notebook-tab-changed` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/notebook-tab-changed.oga")` |
| `play_phone-incoming-call` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/phone-incoming-call.oga")` |
| `play_phone-outgoing-busy` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/phone-outgoing-busy.oga")` |
| `play_phone-outgoing-calling` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/phone-outgoing-calling.oga")` |
| `play2_power-plug` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/power-plug.oga")` |
| `play_power-unplug-battery-low` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/power-unplug-battery-low.oga")` |
| `play2_power-unplug` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/power-unplug.oga")` |
| `play3_system-ready` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/system-ready.ogg")` |
| `play3_trash-empty` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/trash-empty.oga")` |
| `play_window-attention-inactive` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-attention-inactive.oga")` |
| `play_window-attention-active` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-attention-active.oga")` |
| `play_window-close` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-close.oga")` |
| `play_window-maximized` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-maximized.oga")` |
| `play_window-minimized` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-minimized.oga")` |
| `play_window-new` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-new.oga")` |
| `play_window-slide` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-slide.oga")` |
| `play2_window-switch` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-switch.oga")` |
| `play2_window-unmaximized` | `(play -qv 0.5 "${LOCALSOUNDS}/smooth/stereo/window-unmaximized.oga")` |
| `play_action` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/action.wav")` |
| `play_bling` | `(play -qv 0.1 "${LOCALSOUNDS}/soundset/bling.wav")` |
| `play_click` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/click.wav")` |
| `play_com` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/com.wav")` |
| `play_crystal` | `(play -qv 0.5 "${LOCALSOUNDS}/soundset/crystal.wav")` |
| `play1_maximize` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/maximize.wav")` |
| `play_minmize` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/minmize.wav")` |
| `play_newwindow` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/newwindow.wav")` |
| `play_newwindow2` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/newwindow2.wav")` |
| `play_ping` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/ping.wav")` |
| `play_ping2` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/ping2.wav")` |
| `play_snap` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/snap.wav")` |
| `play_thump` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/thump.wav")` |
| `play_trash` | `(play -qv 0.1 "${LOCALSOUNDS}/soundset/trash.wav")` |
| `play_zoom` | `(play -qv 0.2 "${LOCALSOUNDS}/soundset/zoom.wav")` |
| `play_osx1_transformers` | `(play -qv 0.1 "${LOCALSOUNDS}/transformers-desktop-login.ogg")` |
| `play_windows7_button-pressed` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/button-pressed.ogg")` |
| `play_windows7_button-toggle-off` | `(play -qv 0.9 "${LOCALSOUNDS}/Windows7/stereo/button-toggle-off.ogg")` |
| `play_windows7_button-toggle-on` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/button-toggle-on.ogg")` |
| `play_windows7_desktop-login` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/desktop-login.ogg")` |
| `play_windows7_desktop-logout` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/desktop-logout.ogg")` |
| `play_windows7_dialog-error` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-error.ogg")` |
| `play_windows7_dialog-information` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-information.ogg")` |
| `play_windows7_dialog-question` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-question.ogg")` |
| `play_windows7_dialog-question` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-question.wav")` |
| `play_windows7_dialog-warning` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/dialog-warning.ogg")` |
| `play_windows7_phone-incoming-call` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/phone-incoming-call.ogg")` |
| `play_windows7_system-ready` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/system-ready.ogg")` |
| `play_windows7_window-slide` | `(play -qv 0.5 "${LOCALSOUNDS}/Windows7/stereo/window-slide.ogg")` |
| `play3_power-plug` | `(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-plug.ogg")` |
| `play_power-plug` | `(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-plug.ogg")` |
| `play3_power-unplug` | `(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-unplug.ogg")` |
| `play_power-unplug` | `(play -qv 0.5 "${LOCALSOUNDS}/yk-sound-main/stereo/power-unplug.ogg")` |
| `play_zelda_email` | `(play -qv 0.3 "${LOCALSOUNDS}/zelda/email.ogg")` |
| `play_zelda_buddylogin` | `(play -qv 0.3 "${LOCALSOUNDS}/zelda/buddylogin.ogg")` |
| `play_zelda_bell` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/bell.ogg")` |
| `play_zelda_buddylogout` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/buddylogout.ogg")` |
| `play_zelda_button-pressed` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/button-pressed.ogg")` |
| `play_zelda_button-toggle-off` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/button-toggle-off.ogg")` |
| `play_zelda_button-toggle-on` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/button-toggle-on.ogg")` |
| `play_zelda_emptytrash` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/emptytrash.ogg")` |
| `play_zelda_imreceived` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/imreceived.ogg")` |
| `play_zelda_imsent` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/imsent.ogg")` |
| `play_zelda_maximize` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/maximize.ogg")` |
| `play_zelda_unmaximize` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/unmaximize.ogg")` |
| `play_zelda_minimize` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/minimize.ogg")` |
| `play_zelda_lowbatt` | `(play -qv 0.3 "${LOCALSOUNDS}/zelda/lowbatt.ogg")` |
| `play_zelda_dialog-error` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/dialog-error.ogg")` |
| `play_zelda_dialog-information` | `(play -qv 0.3 "${LOCALSOUNDS}/zelda/dialog-information.ogg")` |
| `play_zelda_dialog-warning` | `(play -qv 0.7 "${LOCALSOUNDS}/zelda/dialog-warning.ogg")` |
| `play_zelda_desktop-login` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/desktop-login.ogg")` |
| `play_zelda_desktop-logout` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/desktop-logout.ogg")` |
| `play_zelda_longaction` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/longaction.ogg")` |
| `play_zelda_dialog-question` | `(play -qv 0.5 "${LOCALSOUNDS}/zelda/dialog-question.ogg")` |
| `play_bell_0017` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/bell.ogg")` |
| `play_button-toggle-off_0002` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/button-toggle-off.ogg")` |
| `play_button-toggle-on_0003` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/button-toggle-on.ogg")` |
| `play_button-pressed_0004` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/button-pressed.ogg")` |
| `play_desktop-login_0kinper_005` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/desktop-login.ogg")` |
| `play_desktop-logout_0006` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/desktop-logout.ogg")` |
| `play_dialog-error_0007` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-error.ogg")` |
| `play_dialog-information_0008` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-information.ogg")` |
| `play_dialog-question_0009` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-question.ogg")` |
| `play_dialog-warning_0010` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/dialog-warning.ogg")` |
| `play_message-new-instant_0011` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/message-new-instant.ogg")` |
| `play_phone-incoming-call_0012` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/phone-incoming-call.ogg")` |
| `play_phone-outgoing-busy_0013` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/phone-outgoing-busy.ogg")` |
| `play_service-login_0014` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/service-login.ogg")` |
| `play_service-logout_0015` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/service-logout.ogg")` |
| `play_system-ready_0016` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/system-ready.ogg")` |
| `play_window-slide_0001` | `(play -qv 0.6 "${LOCALSOUNDS}/artistic1/window-slide.ogg")` |
| `play_loginfaileddexter_0018` | `(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginfaileddexter.mp3")` |
| `play_loginscreenready2dexter_0019` | `(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginscreenready2dexter.mp3")` |
| `play_loginscreenreadydexter_0020` | `(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginscreenreadydexter.mp3")` |
| `play_loginsuccessdexter_0021` | `(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/loginsuccessdexter.mp3")` |
| `play_logout_0022` | `(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/logout.mp3")` |
| `play_startup_0023` | `(play -qv 0.6 "${LOCALSOUNDS}/dexter-sounds/startup.mp3")` |
| `play_do_this_again_0024` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/do_this_again.mp3")` |
| `play_errors_0025` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/errors.mp3")` |
| `play_hello_0026` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/hello.wav")` |
| `play_I_dont_care_0027` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/I_dont_care.mp3")` |
| `play_impossible_0028` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/impossible.mp3")` |
| `play_its_you_0029` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/its_you.mp3")` |
| `play_like_cake_0030` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/like_cake.mp3")` |
| `play_long_time_0031` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/long_time.mp3")` |
| `play_stupid_0032` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/stupid.mp3")` |
| `play_your_fault_0033` | `(play -qv 0.6 "${LOCALSOUNDS}/dragon-sound-pack/your_fault.mp3")` |
| `play_itw_desktop_login_0034` | `(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_desktop_login.ogg")` |
| `play_itw_desktop_logout_0035` | `(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_desktop_logout.ogg")` |
| `play_itw_empty_trash_0036` | `(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_empty_trash.ogg")` |
| `play_itw_gdm_login_0037` | `(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_gdm_login.ogg")` |
| `play_itw_notification_0038` | `(play -qv 0.6 "${LOCALSOUNDS}/itw-sounds/itw_notification.ogg")` |
| `play_drums_0039` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/drums.ogg")` |
| `play_empty_trash_0040` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/empty_trash.ogg")` |
| `play_glass_break_0041` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/glass_break.ogg")` |
| `play_gun_reloading_0042` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/gun_reloading.ogg")` |
| `play_gun_shot-01_0043` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/gun_shot-01.ogg")` |
| `play_gun_shot-02_0044` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/gun_shot-02.ogg")` |
| `play_phone_0045` | `(play -qv 0.4 "${LOCALSOUNDS}/just-sounds/phone.ogg")` |
| `play_sound_0046` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/sound.ogg")` |
| `play_turning_off_0047` | `(play -qv 0.6 "${LOCALSOUNDS}/just-sounds/turning _off.ogg")` |
| `play_kdestart_0048` | `(play -qv 0.6 "${LOCALSOUNDS}/kdelove/kdestart.ogg")` |
| `play_kdestop_0049` | `(play -qv 0.6 "${LOCALSOUNDS}/kdelove/kdestop.ogg")` |
| `play_error_kinper_0050` | `(play -qv 0.6 "${LOCALSOUNDS}/kinper/error.ogg")` |
| `play_LogOn_kinper_0051` | `(play -qv 0.2 "${LOCALSOUNDS}/kinper/LogOn.ogg")` |
| `play_LogOut_kinper_0052` | `(play -qv 0.2 "${LOCALSOUNDS}/kinper/LogOut.ogg")` |
| `play_message_kinper_0053` | `(play -qv 0.6 "${LOCALSOUNDS}/kinper/message.ogg")` |
| `play_question_kinper_0054` | `(play -qv 0.6 "${LOCALSOUNDS}/kinper/question.ogg")` |
| `play_usb_in_kinper_0055` | `(play -qv 0.6 "${LOCALSOUNDS}/kinper/usb_in.ogg")` |
| `play_usb_out_kinper_0056` | `(play -qv 0.6 "${LOCALSOUNDS}/kinper/usb_out.ogg")` |
| `play_warning_kinper_0057` | `(play -qv 0.6 "${LOCALSOUNDS}/kinper/warning.ogg")` |
| `play_kmess_chat_0058` | `(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_chat.mp3")` |
| `play_kmess_logoff_0059` | `(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_logoff.mp3")` |
| `play_kmess_logon_0060` | `(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_logon.mp3")` |
| `play_kmess_msg_0061` | `(play -qv 0.6 "${LOCALSOUNDS}/kmess-sounds/kmess_msg.mp3")` |
| `play_megaman5_boss_intro_-_star_0062` | `(play -qv 0.6 "${LOCALSOUNDS}/megaman-5/megaman5_boss_intro_-_star.wav")` |
| `play_megaman5_die_mm_close_0063` | `(play -qv 0.6 "${LOCALSOUNDS}/megaman-5/megaman5_die_mm_close.wav")` |
| `play_01_konami_sequence_0064` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/01_konami_sequence.ogg")` |
| `play_0x0F_0065` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x0F.ogg")` |
| `play_0x10_0066` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x10.ogg")` |
| `play_0x15_0067` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x15.ogg")` |
| `play_0x16_0068` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x16.ogg")` |
| `play_0x20_0069` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x20.ogg")` |
| `play_0x2B_0070` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x2B.ogg")` |
| `play_0x3D_0071` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x3D.ogg")` |
| `play_0x54_0072` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x54.ogg")` |
| `play_0x5B_0073` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x5B.ogg")` |
| `play_0x61_0074` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x61.ogg")` |
| `play_0x66_0075` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x66.ogg")` |
| `play_0x6E_0076` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x6E.ogg")` |
| `play_0x7B_0077` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0x7B.ogg")` |
| `play_0xB9_0078` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/0xB9.ogg")` |
| `play_gameover_0079` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/gameover.ogg")` |
| `play_metalgearcodec_0080` | `(play -qv 0.6 "${LOCALSOUNDS}/mgs-sounds/metalgearcodec.ogg")` |
| `play_e-mail_0081` | `(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/e-mail.mp3")` |
| `play_error1_0082` | `(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/error1.mp3")` |
| `play_error_0083` | `(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/error.mp3")` |
| `play_system_down_0084` | `(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/system_down.mp3")` |
| `play_system_start_0085` | `(play -qv 0.6 "${LOCALSOUNDS}/pclos-hu-system/system_start.mp3")` |
| `play_30979-Start05_0086` | `(play -qv 0.6 "${LOCALSOUNDS}/sons/30979-Start05.mp3")` |
| `play_secret-trophy_0087` | `(play -qv 0.6 "${LOCALSOUNDS}/sons/secret-trophy.wav")` |
| `play_SLAX_Startup_0088` | `(play -qv 0.6 "${LOCALSOUNDS}/sons/SLAX_Startup.ogg")` |
| `play_action_0089` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/action.wav")` |
| `play_bling_s-set_0090` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/bling.wav")` |
| `play_click_s-set_0091` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/click.wav")` |
| `play_com_s-set_0092` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/com.wav")` |
| `play_crystal_s-set_0093` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/crystal.wav")` |
| `play_maximize_s-set_0094` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/maximize.wav")` |
| `play_minmize_s-set_0095` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/minmize.wav")` |
| `play_newwindow2_s-set_0096` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/newwindow2.wav")` |
| `play_newwindow_s-set_0097` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/newwindow.wav")` |
| `play_ping2_s-set_0098` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/ping2.wav")` |
| `play_ping_s-set_0099` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/ping.wav")` |
| `play_snap_0100` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/snap.wav")` |
| `play_thump_0101` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/thump.wav")` |
| `play_trash_0102` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/trash.wav")` |
| `play_zoom_0103` | `(play -qv 0.6 "${LOCALSOUNDS}/soundset1/zoom.wav")` |
| `play_audio-volume-change_0104` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/audio-volume-change.ogg")` |
| `play_battery-low_0105` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/battery-low.ogg")` |
| `play_bell_0106` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/bell.ogg")` |
| `play_complete_0107` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/complete.ogg")` |
| `play_desktop-login_0108` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/desktop-login.ogg")` |
| `play_device-added_0109` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/device-added.ogg")` |
| `play_device-removed_0110` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/device-removed.ogg")` |
| `play_dialog-error_0111` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/dialog-error.ogg")` |
| `play_dialog-question_0112` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/dialog-question.ogg")` |
| `play_dialog-warning_0113` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/dialog-warning.ogg")` |
| `play_message-new-email_0114` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/message-new-email.ogg")` |
| `play_message-new-instant_0115` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/message-new-instant.ogg")` |
| `play_trash-empty_0116` | `(play -qv 0.6 "${LOCALSOUNDS}/star-labs/trash-empty.ogg")` |
| `play_bell_0117` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/bell.ogg")` |
| `play_button-pressed_0118` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/button-pressed.ogg")` |
| `play_button-toggle-off_0119` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/button-toggle-off.ogg")` |
| `play_button-toggle-on_0120` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/button-toggle-on.ogg")` |
| `play_desktop-login_0121` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/desktop-login.ogg")` |
| `play_desktop-logout_0122` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/desktop-logout.ogg")` |
| `play_dialog-error_0123` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-error.ogg")` |
| `play_dialog-information_0124` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-information.ogg")` |
| `play_dialog-question_0125` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-question.ogg")` |
| `play_dialog-question_0126` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-question.wav")` |
| `play_dialog-warning_0127` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/dialog-warning.ogg")` |
| `play_phone-incoming-call_0128` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/phone-incoming-call.ogg")` |
| `play_system-ready_0129` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/system-ready.ogg")` |
| `play_window-slide_0130` | `(play -qv 0.6 "${LOCALSOUNDS}/total-kaoss/window-slide.ogg")` |
| `play_ubuntu-alt-alert_0131` | `(play -qv 0.6 "${LOCALSOUNDS}/ubuntu-alternate/ubuntu-alt-alert.wav")` |
| `play_ubuntu-alt-sd_0132` | `(play -qv 0.6 "${LOCALSOUNDS}/ubuntu-alternate/ubuntu-alt-sd.wav")` |
| `play_ubuntu-alt_0133` | `(play -qv 0.6 "${LOCALSOUNDS}/ubuntu-alternate/ubuntu-alt.wav")` |
| `play_Alarm01_0134` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm01.wav")` |
| `play_Alarm02_0135` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm02.wav")` |
| `play_Alarm03_0136` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm03.wav")` |
| `play_Alarm04_0137` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm04.wav")` |
| `play_Alarm05_0138` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm05.wav")` |
| `play_Alarm06_0139` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm06.wav")` |
| `play_Alarm07_0140` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm07.wav")` |
| `play_Alarm08_0141` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm08.wav")` |
| `play_Alarm09_0142` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm09.wav")` |
| `play_Alarm10_0143` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Alarm10.wav")` |
| `play_chimes_0144` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/chimes.wav")` |
| `play_chord_0145` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/chord.wav")` |
| `play_ding_0146` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ding.wav")` |
| `play_ir_begin_0147` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ir_begin.wav")` |
| `play_ir_end_0148` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ir_end.wav")` |
| `play_ir_inter_0149` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ir_inter.wav")` |
| `play_notify_0150` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/notify.wav")` |
| `play_recycle_0151` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/recycle.wav")` |
| `play_Ring01_0152` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring01.wav")` |
| `play_Ring02_0153` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring02.wav")` |
| `play_Ring03_0154` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring03.wav")` |
| `play_Ring04_0155` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring04.wav")` |
| `play_Ring05_0156` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring05.wav")` |
| `play_Ring06_0157` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring06.wav")` |
| `play_Ring07_0158` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring07.wav")` |
| `play_Ring08_0159` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring08.wav")` |
| `play_Ring09_0160` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring09.wav")` |
| `play_Ring10_0161` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Ring10.wav")` |
| `play_ringout_0162` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/ringout.wav")` |
| `play_Disambiguation_0163` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Disambiguation.wav")` |
| `play_Misrecognition_0164` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Misrecognition.wav")` |
| `play_Off_0165` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Off.wav")` |
| `play_On_0166` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech On.wav")` |
| `play_Sleep_0167` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Speech Sleep.wav")` |
| `play_tada_0168` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/tada.wav")` |
| `play_Background_0169` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Background.wav")` |
| `play_Balloon_0170` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Balloon.wav")` |
| `play_Critical_0171` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Battery Critical.wav")` |
| `play_Low_0172` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Battery Low.wav")` |
| `play_Stop_0173` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Critical Stop.wav")` |
| `play_Default_0174` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Default.wav")` |
| `play_Ding_0175` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Ding.wav")` |
| `play_Error_0176` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Error.wav")` |
| `play_Exclamation_0177` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Exclamation.wav")` |
| `play_Discovered_0178` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Feed Discovered.wav")` |
| `play_Foreground_0179` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Foreground.wav")` |
| `play_Fail_0180` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Hardware Fail.wav")` |
| `play_Insert_0181` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Hardware Insert.wav")` |
| `play_Remove_0182` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Hardware Remove.wav")` |
| `play_Bar_0183` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Information Bar.wav")` |
| `play_Sound_0184` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Logoff Sound.wav")` |
| `play_Logon_0185` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Logon.wav")` |
| `play_Command_0186` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Menu Command.wav")` |
| `play_Nudge_0187` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Message Nudge.wav")` |
| `play_Minimize_0188` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Minimize.wav")` |
| `play_Start_0189` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Navigation Start.wav")` |
| `play_Calendar_0190` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify Calendar.wav")` |
| `play_Email_0191` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify Email.wav")` |
| `play_Messaging_0192` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify Messaging.wav")` |
| `play_Generic_0193` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify System Generic.wav")` |
| `play_Notify_0194` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Notify.wav")` |
| `play_Blocked_0195` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Pop-up Blocked.wav")` |
| `play_complete_0196` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Print complete.wav")` |
| `play_Connection_0197` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Proximity Connection.wav")` |
| `play_Notification_0198` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Proximity Notification.wav")` |
| `play_Recycle_0199` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Recycle.wav")` |
| `play_Restore_0200` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Restore.wav")` |
| `play_Ringin_0201` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Ringin.wav")` |
| `play_Ringout_0202` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Ringout.wav")` |
| `play_Shutdown_0203` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Shutdown.wav")` |
| `play_Startup_0204` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Startup.wav")` |
| `play_Unlock_0205` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows Unlock.wav")` |
| `play_Control_0206` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-10/Windows User Account Control.wav")` |
| `play_button-pressed_0207` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/button-pressed.ogg")` |
| `play_button-toggle-off_0208` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/button-toggle-off.ogg")` |
| `play_button-toggle-on_0209` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/button-toggle-on.ogg")` |
| `play_desktop-login_0210` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/desktop-login.wav")` |
| `play_desktop-logout_0211` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/desktop-logout.wav")` |
| `play_dialog-error_0212` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-error.wav")` |
| `play_dialog-information_0213` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-information.wav")` |
| `play_dialog-question_0214` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-question.wav")` |
| `play_dialog-warning_0215` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/dialog-warning.wav")` |
| `play_phone-incoming-call_0216` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/phone-incoming-call.ogg")` |
| `play_system-ready_0217` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/system-ready.wav")` |
| `play_window-slide_0218` | `(play -qv 0.6 "${LOCALSOUNDS}/windows-eight/window-slide.ogg")` |
| `play_Kopete_Message_buzz_0219` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_buzz.ogg")` |
| `play_Kopete_Message_Highlight_0220` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Highlight.ogg")` |
| `play_Kopete_Message_Received_0221` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Received..ogg")` |
| `play_Kopete_Message_Sent_0222` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Sent.ogg")` |
| `play_Kopete_Message_Sent_old_0223` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_Message_Sent_old.ogg")` |
| `play_Kopete_User_is_Offline_0224` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_User_is_Offline.ogg")` |
| `play_Kopete_User_is_Online_0225` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_User_is_Online.ogg")` |
| `play_Kopete_yahoomail_0226` | `(play -qv 0.6 "${LOCALSOUNDS}/yahoo-sounds/Kopete_yahoomail.ogg")` |
| `play_zelda_bell_0227` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/bell.ogg")` |
| `play_zelda_buddylogin_0228` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/buddylogin.ogg")` |
| `play_zelda_buddylogout_0229` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/buddylogout.ogg")` |
| `play_zelda_button-pressed_0230` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/button-pressed.ogg")` |
| `play_zelda_button-toggle-off_0231` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/button-toggle-off.ogg")` |
| `play_zelda_button-toggle-on_0232` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/button-toggle-on.ogg")` |
| `play_zelda_desktop-login_0233` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/desktop-login.ogg")` |
| `play_zelda_desktop-logout_0234` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/desktop-logout.ogg")` |
| `play_zelda_dialog-error_0235` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-error.ogg")` |
| `play_zelda_dialog-information_0236` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-information.ogg")` |
| `play_zelda_dialog-question_0237` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-question.ogg")` |
| `play_zelda_dialog-warning_0238` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/dialog-warning.ogg")` |
| `play_zelda_email_0239` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/email.ogg")` |
| `play_zelda_emptytrash_0240` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/emptytrash.ogg")` |
| `play_zelda_imreceived_0241` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/imreceived.ogg")` |
| `play_zelda_imsent_0242` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/imsent.ogg")` |
| `play_zelda_longaction_0-243` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/longaction.ogg")` |
| `play_zelda_lowbatt_0-244` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/lowbatt.ogg")` |
| `play_zelda_maximize_0245` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/maximize.ogg")` |
| `play_zelda_minimize_0246` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/minimize.ogg")` |
| `play_zelda_unmaximize_0247` | `(play -qv 0.6 "${LOCALSOUNDS}/zelda/unmaximize.ogg")` |
| `play_alarm-clock-elapsed_zorin_0248` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/alarm-clock-elapsed.oga")` |
| `play_bell_zorin_0249` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/bell.wav")` |
| `play_button-pressed_zorin_0250` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/button-pressed.ogg")` |
| `play_button-toggle-off_zorin_0251` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/button-toggle-off.ogg")` |
| `play_button-toggle-on_zorin_0252` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/button-toggle-on.ogg")` |
| `play_camera-shutter_zorin_0253` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/camera-shutter.oga")` |
| `play_desktop-login_zorin_0254` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/desktop-login.ogg")` |
| `play_desktop-logout_zorin_0255` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/desktop-logout.ogg")` |
| `play_device-added_zorin_0256` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/device-added.oga")` |
| `play_device-removed_zorin_0257` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/device-removed.oga")` |
| `play_dialog-error_zorin_0258` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-error.oga")` |
| `play_dialog-information_zorin_0259` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-information.ogg")` |
| `play_dialog-question_zorin_0260` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-question.ogg")` |
| `play_dialog-warning_zorin_0261` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/dialog-warning.ogg")` |
| `play_message-new-email_zorin_0262` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/message-new-email.ogg")` |
| `play_message-new-instant_zorin_0263` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/message-new-instant.ogg")` |
| `play_message_zorin_0264` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/message.ogg")` |
| `play_phone-incoming-call_zorin_0265` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/phone-incoming-call.ogg")` |
| `play_phone-outgoing-busy_zorin_0266` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/phone-outgoing-busy.ogg")` |
| `play_service-login_zorin_0268` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/service-login.ogg")` |
| `play_service-logout_zorin_0269` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/service-logout.ogg")` |
| `play_success_zorin_0270` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/success.ogg")` |
| `play_suspend-error_zorin_0271` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/suspend-error.wav")` |
| `play_system-ready_zorin_0272` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/system-ready.wav")` |
| `play_trash-empty_zorin_0273` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/trash-empty.oga")` |
| `play_window-slide_zorin_0274` | `(play -qv 0.1 "${LOCALSOUNDS}/zorin/window-slide.ogg")` |

### 12012-more-sounds.sh

Lines: 92 | Size: 1006 bytes

| Alias | Command |
|-------|---------|

### 12015-ALS-canon-obs.sh

Lines: 107 | Size: 4815 bytes

| Alias | Command |
|-------|---------|
| `obsp` | `(cd /home/luxcium/obs-studio-portable/bin/64bit && /home/luxcium/obs-studio-portable/bin/64bit/obs)` |
| `runobs` | `(cd /home/luxcium/obs-studio-portable/bin/64bit && sudo ionice -c 1 -n 1 nice -n -15 sudo -u luxcium /home/luxcium/obs-studio-portable/bin/64bit/obs)` |
| `reloadobs` | `(sudo killall obs; runobs)` |
| `getphotosx` | `(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo ionice -c 2 -n 4 nice -n -15  gphoto2 --get-all-files --skip-existing&& lf&)` |
| `getphotos` | `(cambat && mkdir ${HOME}/myPic -p && cd ${HOME}/myPic && sudo ionice -c 2 -n 4 nice -n -15  gphoto2 --get-all-files --new --skip-existing&& lf&)` |
| `cambatF` | `(echo -ne \n\n && cambat && echo -ne \n\n )` |
| `inice0` | `sudo ionice -c 1 -n 1 nice -n -15` |
| `inice1` | `sudo ionice -c 1 -n 1 nice -n -15` |
| `gphotoload` | `(cambatF && inice0 gphoto2 --stdout --capture-movie | fpeg)` |
| `gphotoloadx` | `(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback && gphotoload)` |
| `reconcam` | `(sudo killall gphoto2& sudo killall ffmpeg&) 2>/dev/null; (mkloopback &)` |
| `loadgphoto` | `gphotoload` |
| `reloadgphoto` | `gphotoreload` |
| `photoload` | `gphotoload` |
| `photoreload` | `gphotoreload` |
| `photoloadx` | `gphotoreload` |
| `camget` | `getphotos` |
| `camload` | `gphotoload` |
| `camreload` | `gphotoreload` |
| `camloadx` | `gphotoreload` |
| `captureimage` | `gphoto2 --keep-raw --capture-image-and-download --stdout > $(getstamp8)-$(getstampdtyy).jpg` |
| `takephoto` | `captureimage` |

### 12020-ALS-misc.sh

Lines: 175 | Size: 8002 bytes

| Alias | Command |
|-------|---------|
| `shtop` | `sudo ionice -c 3 nice -n -15 /usr/bin/shtop -d 5` |
| `renicecode` | `sudo renice -n -15 $(pidof code)` |
| `renicecodemore` | `sudo renice -n -20 -g $(pidof code)` |
| `nicecodeless` | `sudo renice -n 5 -g $(pidof code)` |
| `nicecode` | `sudo renice -n 5 $(pidof code)` |
| `a80` | `echo "1-------10--------20--------30--------40--------50--------60--------70--------80!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"` |
| `a120` | `echo "1-------10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"` |
| `scientia` | `echo † Scientia es lux principium✨ ™` |
| `gitscientia` | `git commit -am '† Scientia es lux principium✨ ™'` |
| `gitscientia_initi` | `git commit -am '†Scientia es lux principium✨ ™ ― initial commit...'` |
| `xscientia` | `echo "† Scientia es lux principium✨ ™" | tee >(xclip -selection clipboard)` |
| `redis_run_6383` | `/projects/monorepo-one/services/image-scout/docker_run_redis` |
| `redis_start_6383` | `/projects/monorepo-one/examples/phash-scout/scripts/start_6383.sh` |
| `start_6383` | `/projects/monorepo-one/examples/phash-scout/scripts/start_6383.sh` |

### 12022-ALS-stmp.sh

Lines: 35 | Size: 988 bytes

| Alias | Command |
|-------|---------|

### 12060-ALS-fille-access.sh

Lines: 18 | Size: 716 bytes

| Alias | Command |
|-------|---------|
| `wheelr` | `sudo chgrp -R wheel ./ && sudo chmod -c -R g+r ./` |
| `wheelw` | `sudo chgrp -R wheel ./ && sudo chmod -c -R g+w ./` |
| `wheelx` | `sudo chgrp -R wheel ./ && sudo chmod -c -R g+x ./` |
| `wheelrw` | `wheelr;wheelw` |
| `wheelrx` | `wheelr;wheelx` |
| `wheelwx` | `wheelw;wheelx` |
| `wheelrwx` | `wheelr;wheelw;wheelx` |
| `luxciumr` | `sudo chgrp -R luxcium ./ && sudo chmod -c -R g+r ./` |
| `luxciumw` | `sudo chgrp -R luxcium ./ && sudo chmod -c -R g+w ./` |
| `luxciumx` | `sudo chgrp -R luxcium ./ && sudo chmod -c -R g+x ./` |
| `luxciumrw` | `luxciumr;luxciumw` |
| `luxciumrx` | `luxciumr;luxciumx` |
| `luxciumwx` | `luxciumw;luxciumx` |
| `luxciumrwx` | `luxciumr;luxciumw;luxciumx` |

### 12299-ALS-shutdown.sh

Lines: 32 | Size: 1176 bytes

| Alias | Command |
|-------|---------|
| `grubreboot` | `sudo dnf upgrade && (sudo dracut --uefi --force -v  && sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg || exit 1) && sudo dkms autoinstall --verbose --all --force && sudo akmods --from-init --verbose --force && echo ―OK― && sleep 2 # && exit 0` |

### 12551-ALS-aliases.sh

Lines: 279 | Size: 14137 bytes

| Alias | Command |
|-------|---------|
| `latestohmyzsh` | `( builtin cd ${AHMYZSH}/ohmyzsh &&  git pull origin) ` |
| `latestpowerlevel10k` | `( builtin cd ${AHMYZSH}/powerlevel10k &&  git pull origin) ` |
| `upgradesubmodules` | `latestohmyzsh; latestpowerlevel10k` |
| `qtbuilder` | `(cd /home/luxcium/dev/questrade-ts; tsc --build --watch)` |
| `qtbuild` | `(cd /home/luxcium/dev/questrade-ts; tsc --build)` |
| `vsx` | `cd ${PATH_LXIO}; code -n ${PATH_LXIO}` |
| `vsqt` | `cd ${PATH_QUESTRADE}; code -n  ${PATH_QUESTRADE}` |
| `vs-iex-cloud` | `cd ${PATH_IEXCLOUD_API_WRAPPER}; code ${PATH_IEXCLOUD_API_WRAPPER}` |
| `vs-iex-api` | `cd ${PATH_IEX_API}; code -n ${PATH_IEX_API}` |
| `vsram` | `cd ${PATH_LXIO}/../ramda; code -n ${PATH_LXIO}/../ramda` |
| `lxi` | `cd ${PATH_LXIO_PRJ}/luxcium.io` |
| `lxicd` | ` mycode ${PATH_LXIO_PRJ}/luxcium.io; lxi;` |
| `lxq` | `cd ${PATH_LXIO_PRJ}/questrade-ts` |
| `lxqc` | `mycode ${PATH_LXIO_PRJ}/questrade-ts && cd ${PATH_LXIO_PRJ}/questrade-ts` |
| `lux` | `open $PATH_LXIO_PRJ` |
| `lx` | `cd ${PATH_LXIO_PRJ}/luxcium.io && mycode ${PATH_LXIO_PRJ}/luxcium.io` |
| `lxc` | `mycode ${PATH_LXIO_PRJ}/luxcium.io && cd ${PATH_LXIO_PRJ}/luxcium.io` |
| `lxe` | `cd ${PATH_LXIO_PRJ}/iex-luxcium-api` |
| `lxec` | `mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api` |
| `iexc` | `mycode ${PATH_LXIO_PRJ}/iex-luxcium-api && cd ${PATH_LXIO_PRJ}/iex-luxcium-api` |
| `lxp` | `cd ${PATH_LXIO_PRJ}/` |
| `lxpc` | `mycode ${PATH_LXIO_PRJ}/ && cd ${PATH_LXIO_PRJ}/` |
| `lx3` | `lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/` |
| `lx4` | `cd ~ && atom . ;lxqc;lxec;lxic && cd ${PATH_LXIO_PRJ}/` |
| `path` | `echo ${PATH}` |
| `kx` | `k` |
| `q` | `_p9k_dump_instant_prompt;exit` |
| `finder` | `open .` |
| `allo` | `echo allo tout le monde` |
| `vstm` | `cd ${DEV_POPNLOCK}; insiders  -n ${DEV_POPNLOCK}` |
| `lxic` | `lxicd;` |
| `runqt` | `ts-node --pretty "${HOME}/Developer/LuxciumProject/questrade-ts/src/test/playground/debug/debug.ts"` |
| `buildqt` | `tsc --pretty -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"` |
| `wbuildqt` | `tsc --pretty -w -p "${HOME}/Developer/LuxciumProject/questrade-ts/configs/tsconfig.commonjs.json"` |
| `startqt` | `node /Users/neb_401/Developer/LuxciumProject/questrade-ts/build/src/test/playground/debug/debug.js` |
| `bstartqt` | `buildqt && startqt` |
| `bnsqt` | `bstartqt` |
| `sqt` | `startqt` |
| `qtrun` | `runqt` |
| `qtbuild` | `buildqt` |
| `qtwbuild` | `wbuildqt` |
| `qtstart` | `startqt` |
| `qtbstart` | `bstartqt` |
| `qtbns` | `bnsqt` |
| `qts` | `sqt` |
| `lxcq` | `lxqc` |
| `jpac` | `code ./package.json` |
| `tsfig` | `code ./tsconfig.json` |
| `insdr` | `/usr/local/bin/insiders` |
| `mycode` | `code` |
| `py` | `export PYTHONSTARTUP="$HOME/.pythonrc";clear;python3 -q` |
| `chrome` | `Google\ Chrome\ Canary --remote-debugging-port=222` |
| `lsc` | `lc` |
| `new` | `_p9k_dump_instant_prompt && zsh -i` |
| `newnlni` | `zsh --no-login --no-interactive` |
| `newninl` | `newnlni` |
| `newni` | `zsh --login --no-interactive` |
| `newnl` | `zsh --no-login --interactive` |
| `newl` | `zsh --login` |
| `newi` | `zsh --interactive` |
| `hconf` | `code ~/.hyper.js` |
| `p9k` | `compute_p9k` |
| `zshcnf` | `atom ~/.zshrc` |
| `zshcode` | `code ~/.oh-my-zsh` |
| `zshatom` | `atom ~/.oh-my-zsh` |
| `clearall` | `\u001b[2J\u001b[0;0H` |
| `noderepl` | `env NODE_NO_READLINE=1 rlwrap node` |
| `nodejs` | `env NODE_NO_READLINE=1 rlwrap node` |
| `js` | `env NODE_NO_READLINE=1 rlwrap node` |
| `rnd4` | `echo $(sha224sum <<< $(date +%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])` |
| `rnd6` | `echo $(sha224sum <<< $(date +%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])` |
| `rnd8` | `echo $(sha224sum <<< $(date +%s%N) | cut -c -8 | tr \[a-z\] \[A-Z\])` |
| `rnd16` | `echo $(sha224sum <<< $(date +%s%N) | cut -c -16 | tr \[a-z\] \[A-Z\])` |
| `rnd24` | `echo $(sha224sum <<< $(date +%s%N) | cut -c -24 | tr \[a-z\] \[A-Z\])` |
| `rnd32` | `echo $(sha224sum <<< $(date +%s%N) | cut -c -32 | tr \[a-z\] \[A-Z\])` |
| `ping` | `ping -c 5` |
| `clr` | `clear; echo Currently logged in on $TTY, as $USER in directory $PWD.` |
| `mkdir` | `mkdir -pv` |
| `psmemall` | `ps -e -orss=,args= | sort -b -k1,1n` |
| `psmem` | `ps -e -orss=,args= | sort -b -k1,1n| head -10` |
| `pscpuall` | `ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr` |
| `pscpu` | `ps -e -o pcpu,cpu,nice,state,cputime,args|sort -k1,1n -nr | head -10` |
| `hist5` | `print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 5` |
| `hist10` | `print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10` |
| `hist15` | `print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 15` |
| `hist20` | `print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 20` |
| `hist25` | `print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 25` |
| `hist50` | `print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 50` |
| `histall` | `print -l ${(o)history%% *} | uniq -c | sort -nr` |
| `mktmp` | `TMPDIRLOCATION="/tmp/LXCM$(uxid)"; mkdir "${TMPDIRLOCATION:0:27}S"; cd "${TMPDIRLOCATION:0:27}S" ;unset -v TMPDIRLOCATION` |
| `ucp` | `sudo nice -n -10 ionice -c 1 -n 5 cp -uRL` |
| `vucp` | `sudo nice -n -10 ionice -c 1 -n 5 cp -vuR` |
| `vrmf` | `sudo nice -n -15 ionice -c 2 -n 3 rm -vRf` |
| `rmout` | `rm -fr ./out` |
| `lxicode` | `nice -5 /home/luxcium/bin/code-luxcium.io; cd /home/luxcium/dev/vscode-luxcium.io/project/luxcium.io` |
| `rdhard` | `rdfind -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./` |
| `rdsoft` | `rdfind -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rdsoft-results.txt' ./` |
| `rdsoftdry` | `rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makesymlinks true -deleteduplicates false -outputname 'rddry-results.txt' ./` |
| `rdharddry` | `rdfind -n true -deterministic true -followsymlinks true -removeidentinode false -makehardlinks true -deleteduplicates false -outputname 'rdhard-results.txt' ./` |
| `ahmy` | `code /ahmyzsh` |
| `myzsh` | `code /ahmyzsh` |
| `testtext` | `echo "0OoLl1IiGQgq;&function;=>*const;fi;!@ ( ) [ ] { } « » < > (‽)-?"` |
| `c16x9` | `echo "0.5625 or 1.7777777778"` |
| `p480x16x9` | `echo 480 x 853` |
| `p720x16x9` | `echo 1280 x 720` |
| `p1080x16x9` | `echo 1080 x 1920` |
| `h480x16x9` | `echo 480 x 853` |
| `h720x16x9` | `echo 1280 x 720` |
| `h1080x16x9` | `echo 1080 x 1920` |
| `w480x16x9` | `echo 480 x 853` |
| `w720x16x9` | `echo 1280 x 720` |
| `w1080x16x9` | `echo 1080 x 1920` |
| `p4Kx16x9` | `echo 2160 x 3840` |
| `h4Kx16x9` | `echo 2160 x 3840` |
| `w4Kx16x9` | `echo 2160 x 3840` |
| `p2160x16x9` | `echo 2160 x 3840` |
| `h2160x16x9` | `echo 2160 x 3840` |
| `w2160x16x9` | `echo 2160 x 3840` |
| `vmdaloc` | `az vm deallocate -g "GroupeONE-UKSouth" --name "MEAN-VirtualONE"` |
| `vmstart` | `az vm start -g "GroupeONE-UKSouth" --name "MEAN-VirtualONE"` |

### 12975-ALS-zsh-lovers.sh

Lines: 199 | Size: 6662 bytes

| Alias | Command |
|-------|---------|
| `ZSH_LOVERS` | `man ZSH-LOVERS` |
| `rzsh` | `exec zsh` |
| `-g ...` | `../..` |
| `-g ....` | `../../..` |
| `-g .....` | `../../../..` |
| `-g CA` | `2>&1 | cat -A` |
| `-g Cx` | `| wc -l` |
| `-g Dx` | `DISPLAY=:0.0` |
| `-g ED` | `export DISPLAY=:0.0` |
| `-g EG` | `|& egrep` |
| `-g EH` | `|& head` |
| `-g EL` | `|& less` |
| `-g ELS` | `|& less -S` |
| `-g ETL` | `|& tail -20` |
| `-g ET` | `|& tail` |
| `-g Fx` | ` | fmt -` |
| `-g Ge` | `| egrep` |
| `-g Gx` | `| grep` |
| `-g Hx` | `| head` |
| `-g HL` | `|& head -20` |
| `-g Sk` | `*~(*.bz2|*.gz|*.tgz|*.zip|*.z)` |
| `-g LL` | `2>&1 | less` |
| `-g Lx` | `| less` |
| `-g LS` | `| less -S` |
| `-g MM` | `| most` |
| `-g Mx` | `| more` |
| `-g NE` | `2> /dev/null` |
| `-g NS` | `| sort -n` |
| `-g NUL` | `> /dev/null 2>&1` |
| `-g PIPE` | `|` |
| `-g Rx` | ` > /c/aaa/tee.txt ` |
| `-g RNS` | `| sort -nr` |
| `-g Sx` | `| sort` |
| `-g TL` | `| tail -20` |
| `-g Tx` | `| tail` |
| `-g US` | `| sort -u` |
| `-g X0G` | `| xargs -0 egrep` |
| `-g X0` | `| xargs -0` |
| `-g XG` | `| xargs egrep` |
| `-g Xx` | `| xargs` |

### 13002-setfont.sh

Lines: 485 | Size: 32783 bytes

| Alias | Command |
|-------|---------|
| `setterminess` | `setfont /lib/kbd/consolefonts/terminess.psf.gz` |
| `setterminess14` | `setfont /lib/kbd/consolefonts/Terminess-14.psf.gz` |
| `setfont161` | `setfont /lib/kbd/consolefonts/161.cp.gz` |
| `setfont162` | `setfont /lib/kbd/consolefonts/162.cp.gz` |
| `setfont163` | `setfont /lib/kbd/consolefonts/163.cp.gz` |
| `setfont164` | `setfont /lib/kbd/consolefonts/164.cp.gz` |
| `setfont165` | `setfont /lib/kbd/consolefonts/165.cp.gz` |
| `setfont737` | `setfont /lib/kbd/consolefonts/737.cp.gz` |
| `setfont880` | `setfont /lib/kbd/consolefonts/880.cp.gz` |
| `setfont928` | `setfont /lib/kbd/consolefonts/928.cp.gz` |
| `setfont972` | `setfont /lib/kbd/consolefonts/972.cp.gz` |
| `setfontAgafari-12` | `setfont /lib/kbd/consolefonts/Agafari-12.psfu.gz` |
| `setfontAgafari-14` | `setfont /lib/kbd/consolefonts/Agafari-14.psfu.gz` |
| `setfontAgafari-16` | `setfont /lib/kbd/consolefonts/Agafari-16.psfu.gz` |
| `setfontalt-8x14` | `setfont /lib/kbd/consolefonts/alt-8x14.gz` |
| `setfontalt-8x16` | `setfont /lib/kbd/consolefonts/alt-8x16.gz` |
| `setfontalt-8x8` | `setfont /lib/kbd/consolefonts/alt-8x8.gz` |
| `setfontaltc-8x16` | `setfont /lib/kbd/consolefonts/altc-8x16.gz` |
| `setfontaply16` | `setfont /lib/kbd/consolefonts/aply16.psf.gz` |
| `setfontarm8` | `setfont /lib/kbd/consolefonts/arm8.fnt.gz` |
| `setfontcp1250` | `setfont /lib/kbd/consolefonts/cp1250.psfu.gz` |
| `setfontcp850-8x14` | `setfont /lib/kbd/consolefonts/cp850-8x14.psfu.gz` |
| `setfontcp850-8x16` | `setfont /lib/kbd/consolefonts/cp850-8x16.psfu.gz` |
| `setfontcp850-8x8` | `setfont /lib/kbd/consolefonts/cp850-8x8.psfu.gz` |
| `setfontcp857` | `setfont /lib/kbd/consolefonts/cp857.08.gz` |
| `setfontcp857` | `setfont /lib/kbd/consolefonts/cp857.14.gz` |
| `setfontcp857` | `setfont /lib/kbd/consolefonts/cp857.16.gz` |
| `setfontcp865-8x14` | `setfont /lib/kbd/consolefonts/cp865-8x14.psfu.gz` |
| `setfontcp865-8x16` | `setfont /lib/kbd/consolefonts/cp865-8x16.psfu.gz` |
| `setfontcp865-8x8` | `setfont /lib/kbd/consolefonts/cp865-8x8.psfu.gz` |
| `setfontcp866-8x14` | `setfont /lib/kbd/consolefonts/cp866-8x14.psf.gz` |
| `setfontcp866-8x16` | `setfont /lib/kbd/consolefonts/cp866-8x16.psf.gz` |
| `setfontcp866-8x8` | `setfont /lib/kbd/consolefonts/cp866-8x8.psf.gz` |
| `setfontcybercafe` | `setfont /lib/kbd/consolefonts/cybercafe.fnt.gz` |
| `setfontCyr_a8x14` | `setfont /lib/kbd/consolefonts/Cyr_a8x14.psfu.gz` |
| `setfontCyr_a8x16` | `setfont /lib/kbd/consolefonts/Cyr_a8x16.psfu.gz` |
| `setfontCyr_a8x8` | `setfont /lib/kbd/consolefonts/Cyr_a8x8.psfu.gz` |
| `setfontcyr-sun16` | `setfont /lib/kbd/consolefonts/cyr-sun16.psfu.gz` |
| `setfontdefault8x16` | `setfont /lib/kbd/consolefonts/default8x16.psfu.gz` |
| `setfontdefault8x9` | `setfont /lib/kbd/consolefonts/default8x9.psfu.gz` |
| `setfontdrdos8x14` | `setfont /lib/kbd/consolefonts/drdos8x14.psfu.gz` |
| `setfontdrdos8x16` | `setfont /lib/kbd/consolefonts/drdos8x16.psfu.gz` |
| `setfontdrdos8x6` | `setfont /lib/kbd/consolefonts/drdos8x6.psfu.gz` |
| `setfontdrdos8x8` | `setfont /lib/kbd/consolefonts/drdos8x8.psfu.gz` |
| `setfonteurlatgr` | `setfont /lib/kbd/consolefonts/eurlatgr.psfu.gz` |
| `setfontGoha-12` | `setfont /lib/kbd/consolefonts/Goha-12.psfu.gz` |
| `setfontGoha-14` | `setfont /lib/kbd/consolefonts/Goha-14.psfu.gz` |
| `setfontGoha-16` | `setfont /lib/kbd/consolefonts/Goha-16.psfu.gz` |
| `setfontGohaClassic-12` | `setfont /lib/kbd/consolefonts/GohaClassic-12.psfu.gz` |
| `setfontGohaClassic-14` | `setfont /lib/kbd/consolefonts/GohaClassic-14.psfu.gz` |
| `setfontGohaClassic-16` | `setfont /lib/kbd/consolefonts/GohaClassic-16.psfu.gz` |
| `setfontgr737a-8x8` | `setfont /lib/kbd/consolefonts/gr737a-8x8.psfu.gz` |
| `setfontgr737a-9x14` | `setfont /lib/kbd/consolefonts/gr737a-9x14.psfu.gz` |
| `setfontgr737a-9x16` | `setfont /lib/kbd/consolefonts/gr737a-9x16.psfu.gz` |
| `setfontgr737b-8x11` | `setfont /lib/kbd/consolefonts/gr737b-8x11.psfu.gz` |
| `setfontgr737b-9x16-medieval` | `setfont /lib/kbd/consolefonts/gr737b-9x16-medieval.psfu.gz` |
| `setfontgr737c-8x14` | `setfont /lib/kbd/consolefonts/gr737c-8x14.psfu.gz` |
| `setfontgr737c-8x16` | `setfont /lib/kbd/consolefonts/gr737c-8x16.psfu.gz` |
| `setfontgr737c-8x6` | `setfont /lib/kbd/consolefonts/gr737c-8x6.psfu.gz` |
| `setfontgr737c-8x7` | `setfont /lib/kbd/consolefonts/gr737c-8x7.psfu.gz` |
| `setfontgr737c-8x8` | `setfont /lib/kbd/consolefonts/gr737c-8x8.psfu.gz` |
| `setfontgr737d-8x16` | `setfont /lib/kbd/consolefonts/gr737d-8x16.psfu.gz` |
| `setfontgr928-8x16-thin` | `setfont /lib/kbd/consolefonts/gr928-8x16-thin.psfu.gz` |
| `setfontgr928-9x14` | `setfont /lib/kbd/consolefonts/gr928-9x14.psfu.gz` |
| `setfontgr928-9x16` | `setfont /lib/kbd/consolefonts/gr928-9x16.psfu.gz` |
| `setfontgr928a-8x14` | `setfont /lib/kbd/consolefonts/gr928a-8x14.psfu.gz` |
| `setfontgr928a-8x16` | `setfont /lib/kbd/consolefonts/gr928a-8x16.psfu.gz` |
| `setfontgr928b-8x14` | `setfont /lib/kbd/consolefonts/gr928b-8x14.psfu.gz` |
| `setfontgr928b-8x16` | `setfont /lib/kbd/consolefonts/gr928b-8x16.psfu.gz` |
| `setfontgreek-polytonic` | `setfont /lib/kbd/consolefonts/greek-polytonic.psfu.gz` |
| `setfontiso01-12x22` | `setfont /lib/kbd/consolefonts/iso01-12x22.psfu.gz` |
| `setfontiso01` | `setfont /lib/kbd/consolefonts/iso01.08.gz` |
| `setfontiso01` | `setfont /lib/kbd/consolefonts/iso01.14.gz` |
| `setfontiso01` | `setfont /lib/kbd/consolefonts/iso01.16.gz` |
| `setfontiso02-12x22` | `setfont /lib/kbd/consolefonts/iso02-12x22.psfu.gz` |
| `setfontiso02` | `setfont /lib/kbd/consolefonts/iso02.08.gz` |
| `setfontiso02` | `setfont /lib/kbd/consolefonts/iso02.14.gz` |
| `setfontiso02` | `setfont /lib/kbd/consolefonts/iso02.16.gz` |
| `setfontiso03` | `setfont /lib/kbd/consolefonts/iso03.08.gz` |
| `setfontiso03` | `setfont /lib/kbd/consolefonts/iso03.14.gz` |
| `setfontiso03` | `setfont /lib/kbd/consolefonts/iso03.16.gz` |
| `setfontiso04` | `setfont /lib/kbd/consolefonts/iso04.08.gz` |
| `setfontiso04` | `setfont /lib/kbd/consolefonts/iso04.14.gz` |
| `setfontiso04` | `setfont /lib/kbd/consolefonts/iso04.16.gz` |
| `setfontiso05` | `setfont /lib/kbd/consolefonts/iso05.08.gz` |
| `setfontiso05` | `setfont /lib/kbd/consolefonts/iso05.14.gz` |
| `setfontiso05` | `setfont /lib/kbd/consolefonts/iso05.16.gz` |
| `setfontiso06` | `setfont /lib/kbd/consolefonts/iso06.08.gz` |
| `setfontiso06` | `setfont /lib/kbd/consolefonts/iso06.14.gz` |
| `setfontiso06` | `setfont /lib/kbd/consolefonts/iso06.16.gz` |
| `setfontiso07` | `setfont /lib/kbd/consolefonts/iso07.14.gz` |
| `setfontiso07` | `setfont /lib/kbd/consolefonts/iso07.16.gz` |
| `setfontiso07u-16` | `setfont /lib/kbd/consolefonts/iso07u-16.psfu.gz` |
| `setfontiso08` | `setfont /lib/kbd/consolefonts/iso08.08.gz` |
| `setfontiso08` | `setfont /lib/kbd/consolefonts/iso08.14.gz` |
| `setfontiso08` | `setfont /lib/kbd/consolefonts/iso08.16.gz` |
| `setfontiso09` | `setfont /lib/kbd/consolefonts/iso09.08.gz` |
| `setfontiso09` | `setfont /lib/kbd/consolefonts/iso09.14.gz` |
| `setfontiso09` | `setfont /lib/kbd/consolefonts/iso09.16.gz` |
| `setfontiso10` | `setfont /lib/kbd/consolefonts/iso10.08.gz` |
| `setfontiso10` | `setfont /lib/kbd/consolefonts/iso10.14.gz` |
| `setfontiso10` | `setfont /lib/kbd/consolefonts/iso10.16.gz` |
| `setfontkoi8-14` | `setfont /lib/kbd/consolefonts/koi8-14.psf.gz` |
| `setfontkoi8c-8x16` | `setfont /lib/kbd/consolefonts/koi8c-8x16.gz` |
| `setfontkoi8r-8x14` | `setfont /lib/kbd/consolefonts/koi8r-8x14.gz` |
| `setfontkoi8r-8x16` | `setfont /lib/kbd/consolefonts/koi8r-8x16.gz` |
| `setfontkoi8r-8x8` | `setfont /lib/kbd/consolefonts/koi8r-8x8.gz` |
| `setfontkoi8r` | `setfont /lib/kbd/consolefonts/koi8r.8x8.psfu.gz` |
| `setfontkoi8u_8x14` | `setfont /lib/kbd/consolefonts/koi8u_8x14.psfu.gz` |
| `setfontkoi8u_8x16` | `setfont /lib/kbd/consolefonts/koi8u_8x16.psfu.gz` |
| `setfontkoi8u_8x8` | `setfont /lib/kbd/consolefonts/koi8u_8x8.psfu.gz` |
| `setfontlat0-08` | `setfont /lib/kbd/consolefonts/lat0-08.psfu.gz` |
| `setfontlat0-10` | `setfont /lib/kbd/consolefonts/lat0-10.psfu.gz` |
| `setfontlat0-12` | `setfont /lib/kbd/consolefonts/lat0-12.psfu.gz` |
| `setfontlat0-14` | `setfont /lib/kbd/consolefonts/lat0-14.psfu.gz` |
| `setfontlat0-16` | `setfont /lib/kbd/consolefonts/lat0-16.psfu.gz` |
| `setfontlat0-sun16` | `setfont /lib/kbd/consolefonts/lat0-sun16.psfu.gz` |
| `setfontlat1-08` | `setfont /lib/kbd/consolefonts/lat1-08.psfu.gz` |
| `setfontlat1-10` | `setfont /lib/kbd/consolefonts/lat1-10.psfu.gz` |
| `setfontlat1-12` | `setfont /lib/kbd/consolefonts/lat1-12.psfu.gz` |
| `setfontlat1-14` | `setfont /lib/kbd/consolefonts/lat1-14.psfu.gz` |
| `setfontlat1-16` | `setfont /lib/kbd/consolefonts/lat1-16.psfu.gz` |
| `setfontlat2-08` | `setfont /lib/kbd/consolefonts/lat2-08.psfu.gz` |
| `setfontlat2-10` | `setfont /lib/kbd/consolefonts/lat2-10.psfu.gz` |
| `setfontlat2-12` | `setfont /lib/kbd/consolefonts/lat2-12.psfu.gz` |
| `setfontlat2-14` | `setfont /lib/kbd/consolefonts/lat2-14.psfu.gz` |
| `setfontlat2-16` | `setfont /lib/kbd/consolefonts/lat2-16.psfu.gz` |
| `setfontlat2-sun16` | `setfont /lib/kbd/consolefonts/lat2-sun16.psfu.gz` |
| `setfontLat2-Terminus16` | `setfont /lib/kbd/consolefonts/Lat2-Terminus16.psfu.gz` |
| `setfontlat2a-16` | `setfont /lib/kbd/consolefonts/lat2a-16.psfu.gz` |
| `setfontlat4-08` | `setfont /lib/kbd/consolefonts/lat4-08.psfu.gz` |
| `setfontlat4-10` | `setfont /lib/kbd/consolefonts/lat4-10.psfu.gz` |
| `setfontlat4-12` | `setfont /lib/kbd/consolefonts/lat4-12.psfu.gz` |
| `setfontlat4-14` | `setfont /lib/kbd/consolefonts/lat4-14.psfu.gz` |
| `setfontlat4-16` | `setfont /lib/kbd/consolefonts/lat4-16.psfu.gz` |
| `setfontlat4-16+` | `setfont /lib/kbd/consolefonts/lat4-16+.psfu.gz` |
| `setfontlat4-19` | `setfont /lib/kbd/consolefonts/lat4-19.psfu.gz` |
| `setfontlat4a-08` | `setfont /lib/kbd/consolefonts/lat4a-08.psfu.gz` |
| `setfontlat4a-10` | `setfont /lib/kbd/consolefonts/lat4a-10.psfu.gz` |
| `setfontlat4a-12` | `setfont /lib/kbd/consolefonts/lat4a-12.psfu.gz` |
| `setfontlat4a-14` | `setfont /lib/kbd/consolefonts/lat4a-14.psfu.gz` |
| `setfontlat4a-16` | `setfont /lib/kbd/consolefonts/lat4a-16.psfu.gz` |
| `setfontlat4a-16+` | `setfont /lib/kbd/consolefonts/lat4a-16+.psfu.gz` |
| `setfontlat4a-19` | `setfont /lib/kbd/consolefonts/lat4a-19.psfu.gz` |
| `setfontlat5-12` | `setfont /lib/kbd/consolefonts/lat5-12.psfu.gz` |
| `setfontlat5-14` | `setfont /lib/kbd/consolefonts/lat5-14.psfu.gz` |
| `setfontlat5-16` | `setfont /lib/kbd/consolefonts/lat5-16.psfu.gz` |
| `setfontlat7-14` | `setfont /lib/kbd/consolefonts/lat7-14.psfu.gz` |
| `setfontlat7a-14` | `setfont /lib/kbd/consolefonts/lat7a-14.psfu.gz` |
| `setfontlat7a-16` | `setfont /lib/kbd/consolefonts/lat7a-16.psf.gz` |
| `setfontlat9-08` | `setfont /lib/kbd/consolefonts/lat9-08.psf.gz` |
| `setfontlat9-10` | `setfont /lib/kbd/consolefonts/lat9-10.psf.gz` |
| `setfontlat9-12` | `setfont /lib/kbd/consolefonts/lat9-12.psf.gz` |
| `setfontlat9-14` | `setfont /lib/kbd/consolefonts/lat9-14.psf.gz` |
| `setfontlat9-16` | `setfont /lib/kbd/consolefonts/lat9-16.psf.gz` |
| `setfontlat9u-08` | `setfont /lib/kbd/consolefonts/lat9u-08.psfu.gz` |
| `setfontlat9u-10` | `setfont /lib/kbd/consolefonts/lat9u-10.psfu.gz` |
| `setfontlat9u-12` | `setfont /lib/kbd/consolefonts/lat9u-12.psfu.gz` |
| `setfontlat9u-14` | `setfont /lib/kbd/consolefonts/lat9u-14.psfu.gz` |
| `setfontlat9u-16` | `setfont /lib/kbd/consolefonts/lat9u-16.psfu.gz` |
| `setfontlat9v-08` | `setfont /lib/kbd/consolefonts/lat9v-08.psfu.gz` |
| `setfontlat9v-10` | `setfont /lib/kbd/consolefonts/lat9v-10.psfu.gz` |
| `setfontlat9v-12` | `setfont /lib/kbd/consolefonts/lat9v-12.psfu.gz` |
| `setfontlat9v-14` | `setfont /lib/kbd/consolefonts/lat9v-14.psfu.gz` |
| `setfontlat9v-16` | `setfont /lib/kbd/consolefonts/lat9v-16.psfu.gz` |
| `setfontlat9w-08` | `setfont /lib/kbd/consolefonts/lat9w-08.psfu.gz` |
| `setfontlat9w-10` | `setfont /lib/kbd/consolefonts/lat9w-10.psfu.gz` |
| `setfontlat9w-12` | `setfont /lib/kbd/consolefonts/lat9w-12.psfu.gz` |
| `setfontlat9w-14` | `setfont /lib/kbd/consolefonts/lat9w-14.psfu.gz` |
| `setfontlat9w-16` | `setfont /lib/kbd/consolefonts/lat9w-16.psfu.gz` |
| `setfontLatArCyrHeb-08` | `setfont /lib/kbd/consolefonts/LatArCyrHeb-08.psfu.gz` |
| `setfontLatArCyrHeb-14` | `setfont /lib/kbd/consolefonts/LatArCyrHeb-14.psfu.gz` |
| `setfontLatArCyrHeb-16` | `setfont /lib/kbd/consolefonts/LatArCyrHeb-16.psfu.gz` |
| `setfontLatArCyrHeb-16+` | `setfont /lib/kbd/consolefonts/LatArCyrHeb-16+.psfu.gz` |
| `setfontLatArCyrHeb-19` | `setfont /lib/kbd/consolefonts/LatArCyrHeb-19.psfu.gz` |
| `setfontlatarcyrheb-sun16` | `setfont /lib/kbd/consolefonts/latarcyrheb-sun16.psfu.gz` |
| `setfontlatarcyrheb-sun32` | `setfont /lib/kbd/consolefonts/latarcyrheb-sun32.psfu.gz` |
| `setfontLatGrkCyr-12x22` | `setfont /lib/kbd/consolefonts/LatGrkCyr-12x22.psfu.gz` |
| `setfontLatGrkCyr-8x16` | `setfont /lib/kbd/consolefonts/LatGrkCyr-8x16.psfu.gz` |
| `setfontLatKaCyrHeb-14` | `setfont /lib/kbd/consolefonts/LatKaCyrHeb-14.psfu.gz` |
| `setfontMik_8x16` | `setfont /lib/kbd/consolefonts/Mik_8x16.gz` |
| `setfontpancyrillic` | `setfont /lib/kbd/consolefonts/pancyrillic.f16.psfu.gz` |
| `setfontruscii_8x16` | `setfont /lib/kbd/consolefonts/ruscii_8x16.psfu.gz` |
| `setfontruscii_8x8` | `setfont /lib/kbd/consolefonts/ruscii_8x8.psfu.gz` |
| `setfontsun12x22` | `setfont /lib/kbd/consolefonts/sun12x22.psfu.gz` |
| `setfontt` | `setfont /lib/kbd/consolefonts/t.fnt.gz` |
| `setfontt850b` | `setfont /lib/kbd/consolefonts/t850b.fnt.gz` |
| `setfonttcvn8x16` | `setfont /lib/kbd/consolefonts/tcvn8x16.psf.gz` |
| `setfontter-112n` | `setfont /lib/kbd/consolefonts/ter-112n.psf.gz` |
| `setfontter-114b` | `setfont /lib/kbd/consolefonts/ter-114b.psf.gz` |
| `setfontter-114n` | `setfont /lib/kbd/consolefonts/ter-114n.psf.gz` |
| `setfontter-114v` | `setfont /lib/kbd/consolefonts/ter-114v.psf.gz` |
| `setfontter-116b` | `setfont /lib/kbd/consolefonts/ter-116b.psf.gz` |
| `setfontter-116n` | `setfont /lib/kbd/consolefonts/ter-116n.psf.gz` |
| `setfontter-116v` | `setfont /lib/kbd/consolefonts/ter-116v.psf.gz` |
| `setfontter-118b` | `setfont /lib/kbd/consolefonts/ter-118b.psf.gz` |
| `setfontter-118n` | `setfont /lib/kbd/consolefonts/ter-118n.psf.gz` |
| `setfontter-120b` | `setfont /lib/kbd/consolefonts/ter-120b.psf.gz` |
| `setfontter-120n` | `setfont /lib/kbd/consolefonts/ter-120n.psf.gz` |
| `setfontter-122b` | `setfont /lib/kbd/consolefonts/ter-122b.psf.gz` |
| `setfontter-122n` | `setfont /lib/kbd/consolefonts/ter-122n.psf.gz` |
| `setfontter-124b` | `setfont /lib/kbd/consolefonts/ter-124b.psf.gz` |
| `setfontter-124n` | `setfont /lib/kbd/consolefonts/ter-124n.psf.gz` |
| `setfontter-128b` | `setfont /lib/kbd/consolefonts/ter-128b.psf.gz` |
| `setfontter-128n` | `setfont /lib/kbd/consolefonts/ter-128n.psf.gz` |
| `setfontter-132b` | `setfont /lib/kbd/consolefonts/ter-132b.psf.gz` |
| `setfontter-132n` | `setfont /lib/kbd/consolefonts/ter-132n.psf.gz` |
| `setfontter-212n` | `setfont /lib/kbd/consolefonts/ter-212n.psf.gz` |
| `setfontter-214b` | `setfont /lib/kbd/consolefonts/ter-214b.psf.gz` |
| `setfontter-214n` | `setfont /lib/kbd/consolefonts/ter-214n.psf.gz` |
| `setfontter-214v` | `setfont /lib/kbd/consolefonts/ter-214v.psf.gz` |
| `setfontter-216b` | `setfont /lib/kbd/consolefonts/ter-216b.psf.gz` |
| `setfontter-216n` | `setfont /lib/kbd/consolefonts/ter-216n.psf.gz` |
| `setfontter-216v` | `setfont /lib/kbd/consolefonts/ter-216v.psf.gz` |
| `setfontter-218b` | `setfont /lib/kbd/consolefonts/ter-218b.psf.gz` |
| `setfontter-218n` | `setfont /lib/kbd/consolefonts/ter-218n.psf.gz` |
| `setfontter-220b` | `setfont /lib/kbd/consolefonts/ter-220b.psf.gz` |
| `setfontter-220n` | `setfont /lib/kbd/consolefonts/ter-220n.psf.gz` |
| `setfontter-222b` | `setfont /lib/kbd/consolefonts/ter-222b.psf.gz` |
| `setfontter-222n` | `setfont /lib/kbd/consolefonts/ter-222n.psf.gz` |
| `setfontter-224b` | `setfont /lib/kbd/consolefonts/ter-224b.psf.gz` |
| `setfontter-224n` | `setfont /lib/kbd/consolefonts/ter-224n.psf.gz` |
| `setfontter-228b` | `setfont /lib/kbd/consolefonts/ter-228b.psf.gz` |
| `setfontter-228n` | `setfont /lib/kbd/consolefonts/ter-228n.psf.gz` |
| `setfontter-232b` | `setfont /lib/kbd/consolefonts/ter-232b.psf.gz` |
| `setfontter-232n` | `setfont /lib/kbd/consolefonts/ter-232n.psf.gz` |
| `setfontter-712n` | `setfont /lib/kbd/consolefonts/ter-712n.psf.gz` |
| `setfontter-714b` | `setfont /lib/kbd/consolefonts/ter-714b.psf.gz` |
| `setfontter-714n` | `setfont /lib/kbd/consolefonts/ter-714n.psf.gz` |
| `setfontter-714v` | `setfont /lib/kbd/consolefonts/ter-714v.psf.gz` |
| `setfontter-716b` | `setfont /lib/kbd/consolefonts/ter-716b.psf.gz` |
| `setfontter-716n` | `setfont /lib/kbd/consolefonts/ter-716n.psf.gz` |
| `setfontter-716v` | `setfont /lib/kbd/consolefonts/ter-716v.psf.gz` |
| `setfontter-718b` | `setfont /lib/kbd/consolefonts/ter-718b.psf.gz` |
| `setfontter-718n` | `setfont /lib/kbd/consolefonts/ter-718n.psf.gz` |
| `setfontter-720b` | `setfont /lib/kbd/consolefonts/ter-720b.psf.gz` |
| `setfontter-720n` | `setfont /lib/kbd/consolefonts/ter-720n.psf.gz` |
| `setfontter-722b` | `setfont /lib/kbd/consolefonts/ter-722b.psf.gz` |
| `setfontter-722n` | `setfont /lib/kbd/consolefonts/ter-722n.psf.gz` |
| `setfontter-724b` | `setfont /lib/kbd/consolefonts/ter-724b.psf.gz` |
| `setfontter-724n` | `setfont /lib/kbd/consolefonts/ter-724n.psf.gz` |
| `setfontter-728b` | `setfont /lib/kbd/consolefonts/ter-728b.psf.gz` |
| `setfontter-728n` | `setfont /lib/kbd/consolefonts/ter-728n.psf.gz` |
| `setfontter-732b` | `setfont /lib/kbd/consolefonts/ter-732b.psf.gz` |
| `setfontter-732n` | `setfont /lib/kbd/consolefonts/ter-732n.psf.gz` |
| `setfontter-912n` | `setfont /lib/kbd/consolefonts/ter-912n.psf.gz` |
| `setfontter-914b` | `setfont /lib/kbd/consolefonts/ter-914b.psf.gz` |
| `setfontter-914n` | `setfont /lib/kbd/consolefonts/ter-914n.psf.gz` |
| `setfontter-914v` | `setfont /lib/kbd/consolefonts/ter-914v.psf.gz` |
| `setfontter-916b` | `setfont /lib/kbd/consolefonts/ter-916b.psf.gz` |
| `setfontter-916n` | `setfont /lib/kbd/consolefonts/ter-916n.psf.gz` |
| `setfontter-916v` | `setfont /lib/kbd/consolefonts/ter-916v.psf.gz` |
| `setfontter-918b` | `setfont /lib/kbd/consolefonts/ter-918b.psf.gz` |
| `setfontter-918n` | `setfont /lib/kbd/consolefonts/ter-918n.psf.gz` |
| `setfontter-920b` | `setfont /lib/kbd/consolefonts/ter-920b.psf.gz` |
| `setfontter-920n` | `setfont /lib/kbd/consolefonts/ter-920n.psf.gz` |
| `setfontter-922b` | `setfont /lib/kbd/consolefonts/ter-922b.psf.gz` |
| `setfontter-922n` | `setfont /lib/kbd/consolefonts/ter-922n.psf.gz` |
| `setfontter-924b` | `setfont /lib/kbd/consolefonts/ter-924b.psf.gz` |
| `setfontter-924n` | `setfont /lib/kbd/consolefonts/ter-924n.psf.gz` |
| `setfontter-928b` | `setfont /lib/kbd/consolefonts/ter-928b.psf.gz` |
| `setfontter-928n` | `setfont /lib/kbd/consolefonts/ter-928n.psf.gz` |
| `setfontter-932b` | `setfont /lib/kbd/consolefonts/ter-932b.psf.gz` |
| `setfontter-932n` | `setfont /lib/kbd/consolefonts/ter-932n.psf.gz` |
| `setfontter-c12n` | `setfont /lib/kbd/consolefonts/ter-c12n.psf.gz` |
| `setfontter-c14b` | `setfont /lib/kbd/consolefonts/ter-c14b.psf.gz` |
| `setfontter-c14n` | `setfont /lib/kbd/consolefonts/ter-c14n.psf.gz` |
| `setfontter-c14v` | `setfont /lib/kbd/consolefonts/ter-c14v.psf.gz` |
| `setfontter-c16b` | `setfont /lib/kbd/consolefonts/ter-c16b.psf.gz` |
| `setfontter-c16n` | `setfont /lib/kbd/consolefonts/ter-c16n.psf.gz` |
| `setfontter-c16v` | `setfont /lib/kbd/consolefonts/ter-c16v.psf.gz` |
| `setfontter-c18b` | `setfont /lib/kbd/consolefonts/ter-c18b.psf.gz` |
| `setfontter-c18n` | `setfont /lib/kbd/consolefonts/ter-c18n.psf.gz` |
| `setfontter-c20b` | `setfont /lib/kbd/consolefonts/ter-c20b.psf.gz` |
| `setfontter-c20n` | `setfont /lib/kbd/consolefonts/ter-c20n.psf.gz` |
| `setfontter-c22b` | `setfont /lib/kbd/consolefonts/ter-c22b.psf.gz` |
| `setfontter-c22n` | `setfont /lib/kbd/consolefonts/ter-c22n.psf.gz` |
| `setfontter-c24b` | `setfont /lib/kbd/consolefonts/ter-c24b.psf.gz` |
| `setfontter-c24n` | `setfont /lib/kbd/consolefonts/ter-c24n.psf.gz` |
| `setfontter-c28b` | `setfont /lib/kbd/consolefonts/ter-c28b.psf.gz` |
| `setfontter-c28n` | `setfont /lib/kbd/consolefonts/ter-c28n.psf.gz` |
| `setfontter-c32b` | `setfont /lib/kbd/consolefonts/ter-c32b.psf.gz` |
| `setfontter-c32n` | `setfont /lib/kbd/consolefonts/ter-c32n.psf.gz` |
| `setfontter-d12n` | `setfont /lib/kbd/consolefonts/ter-d12n.psf.gz` |
| `setfontter-d14b` | `setfont /lib/kbd/consolefonts/ter-d14b.psf.gz` |
| `setfontter-d14n` | `setfont /lib/kbd/consolefonts/ter-d14n.psf.gz` |
| `setfontter-d14v` | `setfont /lib/kbd/consolefonts/ter-d14v.psf.gz` |
| `setfontter-d16b` | `setfont /lib/kbd/consolefonts/ter-d16b.psf.gz` |
| `setfontter-d16n` | `setfont /lib/kbd/consolefonts/ter-d16n.psf.gz` |
| `setfontter-d16v` | `setfont /lib/kbd/consolefonts/ter-d16v.psf.gz` |
| `setfontter-d18b` | `setfont /lib/kbd/consolefonts/ter-d18b.psf.gz` |
| `setfontter-d18n` | `setfont /lib/kbd/consolefonts/ter-d18n.psf.gz` |
| `setfontter-d20b` | `setfont /lib/kbd/consolefonts/ter-d20b.psf.gz` |
| `setfontter-d20n` | `setfont /lib/kbd/consolefonts/ter-d20n.psf.gz` |
| `setfontter-d22b` | `setfont /lib/kbd/consolefonts/ter-d22b.psf.gz` |
| `setfontter-d22n` | `setfont /lib/kbd/consolefonts/ter-d22n.psf.gz` |
| `setfontter-d24b` | `setfont /lib/kbd/consolefonts/ter-d24b.psf.gz` |
| `setfontter-d24n` | `setfont /lib/kbd/consolefonts/ter-d24n.psf.gz` |
| `setfontter-d28b` | `setfont /lib/kbd/consolefonts/ter-d28b.psf.gz` |
| `setfontter-d28n` | `setfont /lib/kbd/consolefonts/ter-d28n.psf.gz` |
| `setfontter-d32b` | `setfont /lib/kbd/consolefonts/ter-d32b.psf.gz` |
| `setfontter-d32n` | `setfont /lib/kbd/consolefonts/ter-d32n.psf.gz` |
| `setfontter-g12n` | `setfont /lib/kbd/consolefonts/ter-g12n.psf.gz` |
| `setfontter-g14b` | `setfont /lib/kbd/consolefonts/ter-g14b.psf.gz` |
| `setfontter-g14n` | `setfont /lib/kbd/consolefonts/ter-g14n.psf.gz` |
| `setfontter-g14v` | `setfont /lib/kbd/consolefonts/ter-g14v.psf.gz` |
| `setfontter-g16b` | `setfont /lib/kbd/consolefonts/ter-g16b.psf.gz` |
| `setfontter-g16n` | `setfont /lib/kbd/consolefonts/ter-g16n.psf.gz` |
| `setfontter-g16v` | `setfont /lib/kbd/consolefonts/ter-g16v.psf.gz` |
| `setfontter-g18b` | `setfont /lib/kbd/consolefonts/ter-g18b.psf.gz` |
| `setfontter-g18n` | `setfont /lib/kbd/consolefonts/ter-g18n.psf.gz` |
| `setfontter-g20b` | `setfont /lib/kbd/consolefonts/ter-g20b.psf.gz` |
| `setfontter-g20n` | `setfont /lib/kbd/consolefonts/ter-g20n.psf.gz` |
| `setfontter-g22b` | `setfont /lib/kbd/consolefonts/ter-g22b.psf.gz` |
| `setfontter-g22n` | `setfont /lib/kbd/consolefonts/ter-g22n.psf.gz` |
| `setfontter-g24b` | `setfont /lib/kbd/consolefonts/ter-g24b.psf.gz` |
| `setfontter-g24n` | `setfont /lib/kbd/consolefonts/ter-g24n.psf.gz` |
| `setfontter-g28b` | `setfont /lib/kbd/consolefonts/ter-g28b.psf.gz` |
| `setfontter-g28n` | `setfont /lib/kbd/consolefonts/ter-g28n.psf.gz` |
| `setfontter-g32b` | `setfont /lib/kbd/consolefonts/ter-g32b.psf.gz` |
| `setfontter-g32n` | `setfont /lib/kbd/consolefonts/ter-g32n.psf.gz` |
| `setfontter-h12n` | `setfont /lib/kbd/consolefonts/ter-h12n.psf.gz` |
| `setfontter-h14b` | `setfont /lib/kbd/consolefonts/ter-h14b.psf.gz` |
| `setfontter-h14n` | `setfont /lib/kbd/consolefonts/ter-h14n.psf.gz` |
| `setfontter-h14v` | `setfont /lib/kbd/consolefonts/ter-h14v.psf.gz` |
| `setfontter-h16b` | `setfont /lib/kbd/consolefonts/ter-h16b.psf.gz` |
| `setfontter-h16n` | `setfont /lib/kbd/consolefonts/ter-h16n.psf.gz` |
| `setfontter-h16v` | `setfont /lib/kbd/consolefonts/ter-h16v.psf.gz` |
| `setfontter-h18b` | `setfont /lib/kbd/consolefonts/ter-h18b.psf.gz` |
| `setfontter-h18n` | `setfont /lib/kbd/consolefonts/ter-h18n.psf.gz` |
| `setfontter-h20b` | `setfont /lib/kbd/consolefonts/ter-h20b.psf.gz` |
| `setfontter-h20n` | `setfont /lib/kbd/consolefonts/ter-h20n.psf.gz` |
| `setfontter-h22b` | `setfont /lib/kbd/consolefonts/ter-h22b.psf.gz` |
| `setfontter-h22n` | `setfont /lib/kbd/consolefonts/ter-h22n.psf.gz` |
| `setfontter-h24b` | `setfont /lib/kbd/consolefonts/ter-h24b.psf.gz` |
| `setfontter-h24n` | `setfont /lib/kbd/consolefonts/ter-h24n.psf.gz` |
| `setfontter-h28b` | `setfont /lib/kbd/consolefonts/ter-h28b.psf.gz` |
| `setfontter-h28n` | `setfont /lib/kbd/consolefonts/ter-h28n.psf.gz` |
| `setfontter-h32b` | `setfont /lib/kbd/consolefonts/ter-h32b.psf.gz` |
| `setfontter-h32n` | `setfont /lib/kbd/consolefonts/ter-h32n.psf.gz` |
| `setfontter-i12n` | `setfont /lib/kbd/consolefonts/ter-i12n.psf.gz` |
| `setfontter-i14b` | `setfont /lib/kbd/consolefonts/ter-i14b.psf.gz` |
| `setfontter-i14n` | `setfont /lib/kbd/consolefonts/ter-i14n.psf.gz` |
| `setfontter-i14v` | `setfont /lib/kbd/consolefonts/ter-i14v.psf.gz` |
| `setfontter-i16b` | `setfont /lib/kbd/consolefonts/ter-i16b.psf.gz` |
| `setfontter-i16n` | `setfont /lib/kbd/consolefonts/ter-i16n.psf.gz` |
| `setfontter-i16v` | `setfont /lib/kbd/consolefonts/ter-i16v.psf.gz` |
| `setfontter-i18b` | `setfont /lib/kbd/consolefonts/ter-i18b.psf.gz` |
| `setfontter-i18n` | `setfont /lib/kbd/consolefonts/ter-i18n.psf.gz` |
| `setfontter-i20b` | `setfont /lib/kbd/consolefonts/ter-i20b.psf.gz` |
| `setfontter-i20n` | `setfont /lib/kbd/consolefonts/ter-i20n.psf.gz` |
| `setfontter-i22b` | `setfont /lib/kbd/consolefonts/ter-i22b.psf.gz` |
| `setfontter-i22n` | `setfont /lib/kbd/consolefonts/ter-i22n.psf.gz` |
| `setfontter-i24b` | `setfont /lib/kbd/consolefonts/ter-i24b.psf.gz` |
| `setfontter-i24n` | `setfont /lib/kbd/consolefonts/ter-i24n.psf.gz` |
| `setfontter-i28b` | `setfont /lib/kbd/consolefonts/ter-i28b.psf.gz` |
| `setfontter-i28n` | `setfont /lib/kbd/consolefonts/ter-i28n.psf.gz` |
| `setfontter-i32b` | `setfont /lib/kbd/consolefonts/ter-i32b.psf.gz` |
| `setfontter-i32n` | `setfont /lib/kbd/consolefonts/ter-i32n.psf.gz` |
| `setfontter-k12n` | `setfont /lib/kbd/consolefonts/ter-k12n.psf.gz` |
| `setfontter-k14b` | `setfont /lib/kbd/consolefonts/ter-k14b.psf.gz` |
| `setfontter-k14n` | `setfont /lib/kbd/consolefonts/ter-k14n.psf.gz` |
| `setfontter-k14v` | `setfont /lib/kbd/consolefonts/ter-k14v.psf.gz` |
| `setfontter-k16b` | `setfont /lib/kbd/consolefonts/ter-k16b.psf.gz` |
| `setfontter-k16n` | `setfont /lib/kbd/consolefonts/ter-k16n.psf.gz` |
| `setfontter-k16v` | `setfont /lib/kbd/consolefonts/ter-k16v.psf.gz` |
| `setfontter-k18b` | `setfont /lib/kbd/consolefonts/ter-k18b.psf.gz` |
| `setfontter-k18n` | `setfont /lib/kbd/consolefonts/ter-k18n.psf.gz` |
| `setfontter-k20b` | `setfont /lib/kbd/consolefonts/ter-k20b.psf.gz` |
| `setfontter-k20n` | `setfont /lib/kbd/consolefonts/ter-k20n.psf.gz` |
| `setfontter-k22b` | `setfont /lib/kbd/consolefonts/ter-k22b.psf.gz` |
| `setfontter-k22n` | `setfont /lib/kbd/consolefonts/ter-k22n.psf.gz` |
| `setfontter-k24b` | `setfont /lib/kbd/consolefonts/ter-k24b.psf.gz` |
| `setfontter-k24n` | `setfont /lib/kbd/consolefonts/ter-k24n.psf.gz` |
| `setfontter-k28b` | `setfont /lib/kbd/consolefonts/ter-k28b.psf.gz` |
| `setfontter-k28n` | `setfont /lib/kbd/consolefonts/ter-k28n.psf.gz` |
| `setfontter-k32b` | `setfont /lib/kbd/consolefonts/ter-k32b.psf.gz` |
| `setfontter-k32n` | `setfont /lib/kbd/consolefonts/ter-k32n.psf.gz` |
| `setfontter-m12n` | `setfont /lib/kbd/consolefonts/ter-m12n.psf.gz` |
| `setfontter-m14b` | `setfont /lib/kbd/consolefonts/ter-m14b.psf.gz` |
| `setfontter-m14n` | `setfont /lib/kbd/consolefonts/ter-m14n.psf.gz` |
| `setfontter-m14v` | `setfont /lib/kbd/consolefonts/ter-m14v.psf.gz` |
| `setfontter-m16b` | `setfont /lib/kbd/consolefonts/ter-m16b.psf.gz` |
| `setfontter-m16n` | `setfont /lib/kbd/consolefonts/ter-m16n.psf.gz` |
| `setfontter-m16v` | `setfont /lib/kbd/consolefonts/ter-m16v.psf.gz` |
| `setfontter-m18b` | `setfont /lib/kbd/consolefonts/ter-m18b.psf.gz` |
| `setfontter-m18n` | `setfont /lib/kbd/consolefonts/ter-m18n.psf.gz` |
| `setfontter-m20b` | `setfont /lib/kbd/consolefonts/ter-m20b.psf.gz` |
| `setfontter-m20n` | `setfont /lib/kbd/consolefonts/ter-m20n.psf.gz` |
| `setfontter-m22b` | `setfont /lib/kbd/consolefonts/ter-m22b.psf.gz` |
| `setfontter-m22n` | `setfont /lib/kbd/consolefonts/ter-m22n.psf.gz` |
| `setfontter-m24b` | `setfont /lib/kbd/consolefonts/ter-m24b.psf.gz` |
| `setfontter-m24n` | `setfont /lib/kbd/consolefonts/ter-m24n.psf.gz` |
| `setfontter-m28b` | `setfont /lib/kbd/consolefonts/ter-m28b.psf.gz` |
| `setfontter-m28n` | `setfont /lib/kbd/consolefonts/ter-m28n.psf.gz` |
| `setfontter-m32b` | `setfont /lib/kbd/consolefonts/ter-m32b.psf.gz` |
| `setfontter-m32b` | `setfont /lib/kbd/consolefonts/ter-m32b.psf.gz` |
| `setfontter-m32n` | `setfont /lib/kbd/consolefonts/ter-m32n.psf.gz` |
| `setfontter-p12n` | `setfont /lib/kbd/consolefonts/ter-p12n.psf.gz` |
| `setfontter-p14b` | `setfont /lib/kbd/consolefonts/ter-p14b.psf.gz` |
| `setfontter-p14n` | `setfont /lib/kbd/consolefonts/ter-p14n.psf.gz` |
| `setfontter-p14v` | `setfont /lib/kbd/consolefonts/ter-p14v.psf.gz` |
| `setfontter-p16b` | `setfont /lib/kbd/consolefonts/ter-p16b.psf.gz` |
| `setfontter-p16n` | `setfont /lib/kbd/consolefonts/ter-p16n.psf.gz` |
| `setfontter-p16v` | `setfont /lib/kbd/consolefonts/ter-p16v.psf.gz` |
| `setfontter-p18b` | `setfont /lib/kbd/consolefonts/ter-p18b.psf.gz` |
| `setfontter-p18n` | `setfont /lib/kbd/consolefonts/ter-p18n.psf.gz` |
| `setfontter-p20b` | `setfont /lib/kbd/consolefonts/ter-p20b.psf.gz` |
| `setfontter-p20n` | `setfont /lib/kbd/consolefonts/ter-p20n.psf.gz` |
| `setfontter-p22b` | `setfont /lib/kbd/consolefonts/ter-p22b.psf.gz` |
| `setfontter-p22n` | `setfont /lib/kbd/consolefonts/ter-p22n.psf.gz` |
| `setfontter-p24b` | `setfont /lib/kbd/consolefonts/ter-p24b.psf.gz` |
| `setfontter-p24n` | `setfont /lib/kbd/consolefonts/ter-p24n.psf.gz` |
| `setfontter-p28b` | `setfont /lib/kbd/consolefonts/ter-p28b.psf.gz` |
| `setfontter-p28n` | `setfont /lib/kbd/consolefonts/ter-p28n.psf.gz` |
| `setfontter-p32b` | `setfont /lib/kbd/consolefonts/ter-p32b.psf.gz` |
| `setfontter-p32n` | `setfont /lib/kbd/consolefonts/ter-p32n.psf.gz` |
| `setfontter-u12n` | `setfont /lib/kbd/consolefonts/ter-u12n.psf.gz` |
| `setfontter-u14b` | `setfont /lib/kbd/consolefonts/ter-u14b.psf.gz` |
| `setfontter-u14n` | `setfont /lib/kbd/consolefonts/ter-u14n.psf.gz` |
| `setfontter-u14v` | `setfont /lib/kbd/consolefonts/ter-u14v.psf.gz` |
| `setfontter-u16b` | `setfont /lib/kbd/consolefonts/ter-u16b.psf.gz` |
| `setfontter-u16n` | `setfont /lib/kbd/consolefonts/ter-u16n.psf.gz` |
| `setfontter-u16v` | `setfont /lib/kbd/consolefonts/ter-u16v.psf.gz` |
| `setfontter-u18b` | `setfont /lib/kbd/consolefonts/ter-u18b.psf.gz` |
| `setfontter-u18n` | `setfont /lib/kbd/consolefonts/ter-u18n.psf.gz` |
| `setfontter-u20b` | `setfont /lib/kbd/consolefonts/ter-u20b.psf.gz` |
| `setfontter-u20n` | `setfont /lib/kbd/consolefonts/ter-u20n.psf.gz` |
| `setfontter-u22b` | `setfont /lib/kbd/consolefonts/ter-u22b.psf.gz` |
| `setfontter-u22n` | `setfont /lib/kbd/consolefonts/ter-u22n.psf.gz` |
| `setfontter-u24b` | `setfont /lib/kbd/consolefonts/ter-u24b.psf.gz` |
| `setfontter-u24n` | `setfont /lib/kbd/consolefonts/ter-u24n.psf.gz` |
| `setfontter-u28b` | `setfont /lib/kbd/consolefonts/ter-u28b.psf.gz` |
| `setfontter-u28n` | `setfont /lib/kbd/consolefonts/ter-u28n.psf.gz` |
| `setfontter-u32b` | `setfont /lib/kbd/consolefonts/ter-u32b.psf.gz` |
| `setfontter-u32n` | `setfont /lib/kbd/consolefonts/ter-u32n.psf.gz` |
| `setfontter-v12n` | `setfont /lib/kbd/consolefonts/ter-v12n.psf.gz` |
| `setfontter-v14b` | `setfont /lib/kbd/consolefonts/ter-v14b.psf.gz` |
| `setfontter-v14n` | `setfont /lib/kbd/consolefonts/ter-v14n.psf.gz` |
| `setfontter-v14v` | `setfont /lib/kbd/consolefonts/ter-v14v.psf.gz` |
| `setfontter-v16b` | `setfont /lib/kbd/consolefonts/ter-v16b.psf.gz` |
| `setfontter-v16n` | `setfont /lib/kbd/consolefonts/ter-v16n.psf.gz` |
| `setfontter-v16v` | `setfont /lib/kbd/consolefonts/ter-v16v.psf.gz` |
| `setfontter-v18b` | `setfont /lib/kbd/consolefonts/ter-v18b.psf.gz` |
| `setfontter-v18n` | `setfont /lib/kbd/consolefonts/ter-v18n.psf.gz` |
| `setfontter-v20b` | `setfont /lib/kbd/consolefonts/ter-v20b.psf.gz` |
| `setfontter-v20n` | `setfont /lib/kbd/consolefonts/ter-v20n.psf.gz` |
| `setfontter-v22b` | `setfont /lib/kbd/consolefonts/ter-v22b.psf.gz` |
| `setfontter-v22n` | `setfont /lib/kbd/consolefonts/ter-v22n.psf.gz` |
| `setfontter-v24b` | `setfont /lib/kbd/consolefonts/ter-v24b.psf.gz` |
| `setfontter-v24n` | `setfont /lib/kbd/consolefonts/ter-v24n.psf.gz` |
| `setfontter-v28b` | `setfont /lib/kbd/consolefonts/ter-v28b.psf.gz` |
| `setfontter-v28n` | `setfont /lib/kbd/consolefonts/ter-v28n.psf.gz` |
| `setfontter-v32b` | `setfont /lib/kbd/consolefonts/ter-v32b.psf.gz` |
| `setfontter-v32n` | `setfont /lib/kbd/consolefonts/ter-v32n.psf.gz` |
| `setfontterminess` | `setfont /lib/kbd/consolefonts/terminess.psf.gz` |
| `setfontUniCyr_8x14` | `setfont /lib/kbd/consolefonts/UniCyr_8x14.psf.gz` |
| `setfontUniCyr_8x16` | `setfont /lib/kbd/consolefonts/UniCyr_8x16.psf.gz` |
| `setfontUniCyr_8x8` | `setfont /lib/kbd/consolefonts/UniCyr_8x8.psf.gz` |
| `setfontUniCyrExt_8x16` | `setfont /lib/kbd/consolefonts/UniCyrExt_8x16.psf.gz` |
| `setfontviscii10-8x16` | `setfont /lib/kbd/consolefonts/viscii10-8x16.psfu.gz` |

### 13010-ALS-nmon.sh

Lines: 255 | Size: 14329 bytes

| Alias | Command |
|-------|---------|
| `nmonhelp` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=h nmon -a` |
| `nmonres` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=r nmon -a` |
| `nmoncpu` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=c nmon -a` |
| `nmonccpu` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=C nmon -a` |
| `nmonlcpu` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=l nmon -a` |
| `nmonmem` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=m nmon -a` |
| `nmonvirt` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=V nmon -a` |
| `nmonnetwork` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=n nmon -a` |
| `nmonnfs` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=N nmon -a` |
| `nmondisk` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=d nmon -a` |
| `nmondiskstats` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=D nmon -a` |
| `nmonkern` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=k nmon -a` |
| `nmonfs` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=jJ nmon -a` |
| `nmonfsall` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=j nmon -a` |
| `nmonmhz` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=M nmon -a` |
| `nmontopnice` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t1 nmon -a` |
| `nmontopproc` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t3 nmon -a` |
| `nmontopmem` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t4 nmon -a` |
| `nmontopio` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t5 nmon -a` |
| `nmontopniceu` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t1u nmon -a` |
| `nmontopprocu` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t3u nmon -a` |
| `nmontopmemu` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t4u nmon -a` |
| `nmontopiou` | `sudo nice -n -15 ionice -c 2 -n 3 env NMON=t5u nmon -a` |

### 14000-python.sh

Lines: 3 | Size: 36 bytes

| Alias | Command |
|-------|---------|
| `python` | `python3` |

### 15000-comfyui.sh

Lines: 8 | Size: 320 bytes

| Alias | Command |
|-------|---------|
| `ai_lab` | `conda activate ai_lab && cd /projects/sdxl-workspace;` |
| `comfy` | `conda activate ai_lab && /projects/monorepo-one/static/stable-diffusion/ComfyUI.bat.sh` |

### 20000-Terminator.sh

Lines: 22 | Size: 912 bytes

| Alias | Command |
|-------|---------|
| `get_tab` | `remotinator get_tab` |
| `get_tab_title` | `remotinator get_tab_title` |
| `get_terminals` | `remotinator get_terminals` |
| `get_window` | `remotinator get_window` |
| `get_window_title` | `remotinator get_window_title` |
| `hsplit` | `remotinator hsplit` |
| `new_tab` | `remotinator new_tab` |
| `new_window` | `remotinator new_window` |
| `vsplit` | `remotinator vsplit` |
| `qtapiconsole` | `terminator -m --role=qtapiconsole --layout=qtapiconsole --profile=default --working-directory=/home/luxcium/dev/questrade-ts` |
| `qtapi` | `cd /home/luxcium/dev/questrade-ts/out` |
| `qtapiout` | `cd /home/luxcium/dev/questrade-ts/out` |
| `qtapitsc` | `(qtapi; tsc --build --watch)` |
| `qtapitsc_` | `(qtapi; tsc --build)` |
| `qtapinode` | `(qtapitsc_&;qtapiout; node /home/luxcium/dev/questrade-ts/out/src/test/playground/main.js)` |

### 30000-tmux.sh

Lines: 0 | Size: 0 bytes

| Alias | Command |
|-------|---------|

### 31000-neovim.sh

Lines: 3 | Size: 34 bytes

| Alias | Command |
|-------|---------|
| `vim` | `nvim` |

### 78000-nvidia.sh

Lines: 154 | Size: 8153 bytes

| Alias | Command |
|-------|---------|
| `DynamicDithering` | `DitheringDynamic` |
| `StaticDithering` | `DitheringStatic` |
| `TemporalDithering` | `DitheringTemporal` |
| `dynamic` | `DitheringDynamic` |
| `static` | `DitheringStatic` |
| `temporal` | `DitheringTemporal` |
| `imageperform` | `OpenGLImagePerform` |
| `imagePerformNormal` | `OpenGLImagePerform` |
| `imagePerformHigh` | `OpenGLImagePerformHigh` |
| `imageQualityNormal` | `OpenGLImageQuality` |
| `imageQualityHigh` | `OpenGLImageQualityHigh` |
| `imagequality` | `OpenGLImageQuality` |

### 80000-vscode-portable.sh

Lines: 3 | Size: 117 bytes

| Alias | Command |
|-------|---------|
| `get-vscode-stable` | `wget https://code.visualstudio.com/sha/download?build=stable&os=linux-x64` |

### 89000-killall.sh

Lines: 59 | Size: 1307 bytes

| Alias | Command |
|-------|---------|
| `kchrome` | `killall chrome || killall chrome-stable` |
| `kmsedge` | `killall msedge` |
| `kkonsole` | `killall konsole` |
| `kdolphin` | `killall dolphin` |
| `kcode` | `killall code` |
| `kkwrite` | `killall kwrite` |
| `kgwenview` | `killall gwenview` |
| `killmorecode` | `nohup bash -c "(sleep 1.5; killall code)" >/dev/null 2>&1 & killmore` |
| `killcodemore` | `nohup bash -c "(sleep 1.5; killall code)" >/dev/null 2>&1 & killmore` |
| `killchrome` | `kchrome` |
| `killmsedge` | `kmsedge` |
| `kmicrosoft-edge` | `kmsedge` |
| `killmicrosoft-edge` | `kmsedge` |
| `killkonsole` | `kkonsole` |
| `killdolphin` | `kdolphin` |
| `killcode` | `kcode` |
| `killkwrite` | `kkwrite` |
| `killgwenview` | `kgwenview` |
| `reboot` | `nohup bash -c "(sleep 2; /sbin/reboot)" >/dev/null 2>&1 & nohup bash -c "(sleep 1.25; killall code)" >/dev/null 2>&1 & killmore &` |

### 90201-fnm.sh

Lines: 26 | Size: 635 bytes

| Alias | Command |
|-------|---------|
| `use14` | `fnm use 14` |
| `use16` | `fnm use 16` |
| `use18` | `fnm use 18` |
| `use19` | `fnm use 19` |
| `use20` | `fnm use 20` |
| `usefnm` | `fnm use default` |
| `uselts` | `fnm use lts` |
| `useactive` | `fnm use active` |
| `useacurrent` | `fnm use acurrent` |
| `update-fnm` | `update_fnm` |
| `fnm-update` | `update_fnm` |
| `updatefnm` | `update_fnm` |
| `fnmupdate` | `update_fnm` |
| `upgrade-fnm` | `update_fnm` |
| `fnm-upgrade` | `update_fnm` |
| `upgradefnm` | `update_fnm` |
| `fnmupgrade` | `update_fnm` |

### include-dnf.repos.sh

Lines: 281 | Size: 9423 bytes

| Alias | Command |
|-------|---------|

### k8s.sh

Lines: 3 | Size: 31 bytes

| Alias | Command |
|-------|---------|
| `k` | `kubectl` |

### tmux.sh

Lines: 41 | Size: 1948 bytes

| Alias | Command |
|-------|---------|
| `lxqtx` | `env tmux -uv -f ${TMUX_CONFIGS}/questrade.tmux.conf new-session -A -s questrade-ts -c ${PATH_LXIO_PRJ}/questrade-ts` |
| `txio` | `env tmux -uv -f ${TMUX_CONFIGS}/luxcium.tmux.conf new-session -A -s luxcium-io -c ${PATH_LXIO_PRJ}/luxcium.io` |
| `nx` | `tmux neww` |
| `dx` | `tmux detach -a; mxd` |
| `k` | `_p9k_dump_instant_prompt;notmytty; tmux kill-session -a; killall tmux` |
| `mylab` | `tmux new-window -d -c '/Users/neb_401/JupyterLab' -n 'Jupyter Lab' 'env jupyter lab'` |
| `jlab` | `tmux new-window -d -n 'Jupyter Lab' 'env jupyter lab'` |
| `quit` | `tmux detach` |
| `lximux` | `tmux-luxcium` |
| `lxikill` | `tmux kill-session -t $LXI_SESSION` |
| `cnftmx` | `atom ~/.tmux.conf` |

## Navigation

Quick links to sections:

- [00000-man-ls.sh](#00000-man-ls-sh)
- [0000-projects.sh](#0000-projects-sh)
- [00100-aliases-manager.sh](#00100-aliases-manager-sh)
- [10000-images-files.sh](#10000-images-files-sh)
- [10001-rm.sh](#10001-rm-sh)
- [10002-cd.sh](#10002-cd-sh)
- [10003-ls.sh](#10003-ls-sh)
- [10004-cp.sh](#10004-cp-sh)
- [10005-mv.sh](#10005-mv-sh)
- [10006-ip.sh](#10006-ip-sh)
- [11000-kill.sh](#11000-kill-sh)
- [11001-dnf.sh](#11001-dnf-sh)
- [11800-plasma_shell.sh](#11800-plasma-shell-sh)
- [11811-docked.sh](#11811-docked-sh)
- [11812-redis.sh](#11812-redis-sh)
- [12000-systemctl.sh](#12000-systemctl-sh)
- [12010-ALS-cht-sh.sh](#12010-als-cht-sh-sh)
- [12010-ALS-git.sh](#12010-als-git-sh)
- [12010-ALS-npm.sh](#12010-als-npm-sh)
- [12010-ALS-tsc.sh](#12010-als-tsc-sh)
- [12010-ALS-vscode.sh](#12010-als-vscode-sh)
- [12010-ALS-yarn.sh](#12010-als-yarn-sh)
- [12012-ALS-sounds.sh](#12012-als-sounds-sh)
- [12012-more-sounds.sh](#12012-more-sounds-sh)
- [12015-ALS-canon-obs.sh](#12015-als-canon-obs-sh)
- [12020-ALS-misc.sh](#12020-als-misc-sh)
- [12022-ALS-stmp.sh](#12022-als-stmp-sh)
- [12060-ALS-fille-access.sh](#12060-als-fille-access-sh)
- [12299-ALS-shutdown.sh](#12299-als-shutdown-sh)
- [12551-ALS-aliases.sh](#12551-als-aliases-sh)
- [12975-ALS-zsh-lovers.sh](#12975-als-zsh-lovers-sh)
- [13002-setfont.sh](#13002-setfont-sh)
- [13010-ALS-nmon.sh](#13010-als-nmon-sh)
- [14000-python.sh](#14000-python-sh)
- [15000-comfyui.sh](#15000-comfyui-sh)
- [20000-Terminator.sh](#20000-terminator-sh)
- [30000-tmux.sh](#30000-tmux-sh)
- [31000-neovim.sh](#31000-neovim-sh)
- [78000-nvidia.sh](#78000-nvidia-sh)
- [80000-vscode-portable.sh](#80000-vscode-portable-sh)
- [89000-killall.sh](#89000-killall-sh)
- [90201-fnm.sh](#90201-fnm-sh)
- [include-dnf.repos.sh](#include-dnf-repos-sh)
- [k8s.sh](#k8s-sh)
- [tmux.sh](#tmux-sh)

## Maintenance

The alias inventory is automatically updated. You can:

- Run `generate-alias-inventory` to update this file manually
- View historical snapshots in `/projects/templates/ahmyzsh/tools/alias-history/`
- Use `find-alias [name]` to search for a specific alias
- Run `alias-maintenance` to check for potential issues

---
Generated by alias-inventory-enhanced.sh script
