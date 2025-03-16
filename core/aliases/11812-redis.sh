#!/bin/bash

# Total lines: 256

function redisping() {
  redis-cli -p "$1" ping "PONG ${1}" 2>/dev/null
}

alias red_cli='redis-cli'
alias red_all='redis-cli --raw keys \*'
alias smembers='redis-cli smembers'
alias hgetall='redis-cli hgetall'
alias hexist='redis-cli hexist'
alias exists='redis-cli exists'

# !!
#% <option value="hyperloglog">
################################################################################
alias pfadd='redis-cli PFADD'
alias pfcount='redis-cli PFCOUNT'
alias pfmerge='redis-cli PFMERGE'

# !!
#% <option value="hyperloglog">
################################################################################
alias red_PFADD='redis-cli PFADD'
alias red_PFCOUNT='redis-cli PFCOUNT'
alias red_PFMERGE='redis-cli PFMERGE'

# !!
#% <option value="keys">
################################################################################
alias red_COPY='redis-cli COPY'
alias red_DEL='redis-cli DEL'
alias red_DUMP='redis-cli DUMP'
alias red_EXISTS='redis-cli EXISTS'
alias red_EXPIRE='redis-cli EXPIRE'
alias red_EXPIREAT='redis-cli EXPIREAT'
alias red_KEYS='redis-cli KEYS'
alias red_MIGRATE='redis-cli MIGRATE'
alias red_MOVE='redis-cli MOVE'
alias red_OBJECT='redis-cli OBJECT'
alias red_PERSIST='redis-cli PERSIST'
alias red_PEXPIRE='redis-cli PEXPIRE'
alias red_PEXPIREAT='redis-cli PEXPIREAT'
alias red_PTTL='redis-cli PTTL'
alias red_RANDOMKEY='redis-cli RANDOMKEY'
alias red_RENAME='redis-cli RENAME'
alias red_RENAMENX='redis-cli RENAMENX'
alias red_RESTORE='redis-cli RESTORE'
alias red_SCAN='redis-cli SCAN'
alias red_SORT='redis-cli SORT'
alias red_TOUCH='redis-cli TOUCH'
alias red_TTL='redis-cli TTL'
alias red_TYPE='redis-cli TYPE'
alias red_UNLINK='redis-cli UNLINK'
alias red_WAIT='redis-cli WAIT'

# !!
#% <option value="hash">
################################################################################
alias red_HDEL='redis-cli HDEL'
alias red_HEXISTS='redis-cli HEXISTS'
alias red_HGET='redis-cli HGET'
alias red_HGETALL='redis-cli HGETALL'
alias red_HINCRBY='redis-cli HINCRBY'
alias red_HINCRBYFLOAT='redis-cli HINCRBYFLOAT'
alias red_HKEYS='redis-cli HKEYS'
alias red_HLEN='redis-cli HLEN'
alias red_HMGET='redis-cli HMGET'
alias red_HMSET='redis-cli HMSET'
alias red_HSCAN='redis-cli HSCAN'
alias red_HSET='redis-cli HSET'
alias red_HSETNX='redis-cli HSETNX'
alias red_HSTRLEN='redis-cli HSTRLEN'
alias red_HVALS='redis-cli HVALS'

# !!
#% <option value="list">
################################################################################
alias red_BLMOVE='redis-cli BLMOVE'
alias red_BLPOP='redis-cli BLPOP'
alias red_BRPOP='redis-cli BRPOP'
alias red_BRPOPLPUSH='redis-cli BRPOPLPUSH'
alias red_LINDEX='redis-cli LINDEX'
alias red_LINSERT='redis-cli LINSERT'
alias red_LLEN='redis-cli LLEN'
alias red_LMOVE='redis-cli LMOVE'
alias red_LPOP='redis-cli LPOP'
alias red_LPOS='redis-cli LPOS'
alias red_LPUSH='redis-cli LPUSH'
alias red_LPUSHX='redis-cli LPUSHX'
alias red_LRANGE='redis-cli LRANGE'
alias red_LREM='redis-cli LREM'
alias red_LSET='redis-cli LSET'
alias red_LTRIM='redis-cli LTRIM'
alias red_RPOP='redis-cli RPOP'
alias red_RPOPLPUSH='redis-cli RPOPLPUSH'
alias red_RPUSH='redis-cli RPUSH'
alias red_RPUSHX='redis-cli RPUSHX'

# !!
#% <option value="set">
################################################################################
alias red_SADD='redis-cli SADD'
alias red_SCARD='redis-cli SCARD'
alias red_SDIFF='redis-cli SDIFF'
alias red_SDIFFSTORE='redis-cli SDIFFSTORE'
alias red_SINTER='redis-cli SINTER'
alias red_SINTERSTORE='redis-cli SINTERSTORE'
alias red_SISMEMBER='redis-cli SISMEMBER'
alias red_SMEMBERS='redis-cli SMEMBERS'
alias red_SMISMEMBER='redis-cli SMISMEMBER'
alias red_SMOVE='redis-cli SMOVE'
alias red_SPOP='redis-cli SPOP'
alias red_SRANDMEMBER='redis-cli SRANDMEMBER'
alias red_SREM='redis-cli SREM'
alias red_SSCAN='redis-cli SSCAN'
alias red_SUNION='redis-cli SUNION'
alias red_SUNIONSTORE='redis-cli SUNIONSTORE'

# !!
#% <option value="sorted_set">
################################################################################
alias red_BZPOPMAX='redis-cli BZPOPMAX'
alias red_BZPOPMIN='redis-cli BZPOPMIN'
alias red_ZADD='redis-cli ZADD'
alias red_ZCARD='redis-cli ZCARD'
alias red_ZCOUNT='redis-cli ZCOUNT'
alias red_ZDIFF='redis-cli ZDIFF'
alias red_ZDIFFSTORE='redis-cli ZDIFFSTORE'
alias red_ZINCRBY='redis-cli ZINCRBY'
alias red_ZINTER='redis-cli ZINTER'
alias red_ZINTERSTORE='redis-cli ZINTERSTORE'
alias red_ZLEXCOUNT='redis-cli ZLEXCOUNT'
alias red_ZMSCORE='redis-cli ZMSCORE'
alias red_ZPOPMAX='redis-cli ZPOPMAX'
alias red_ZPOPMIN='redis-cli ZPOPMIN'
alias red_ZRANGE='redis-cli ZRANGE'
alias red_ZRANGEBYLEX='redis-cli ZRANGEBYLEX'
alias red_ZRANGEBYSCORE='redis-cli ZRANGEBYSCORE'
alias red_ZRANGESTORE='redis-cli ZRANGESTORE'
alias red_ZRANK='redis-cli ZRANK'
alias red_ZREM='redis-cli ZREM'
alias red_ZREMRANGEBYLEX='redis-cli ZREMRANGEBYLEX'
alias red_ZREMRANGEBYRANK='redis-cli ZREMRANGEBYRANK'
alias red_ZREMRANGEBYSCORE='redis-cli ZREMRANGEBYSCORE'
alias red_ZREVRANGE='redis-cli ZREVRANGE'
alias red_ZREVRANGEBYLEX='redis-cli ZREVRANGEBYLEX'
alias red_ZREVRANGEBYSCORE='redis-cli ZREVRANGEBYSCORE'
alias red_ZREVRANK='redis-cli ZREVRANK'
alias red_ZSCAN='redis-cli ZSCAN'
alias red_ZSCORE='redis-cli ZSCORE'
alias red_ZUNION='redis-cli ZUNION'
alias red_ZUNIONSTORE='redis-cli ZUNIONSTORE'

# !!
#% <option value="stream">
################################################################################
alias red_XACK='redis-cli XACK'
alias red_XADD='redis-cli XADD'
alias red_XAUTOCLAIM='redis-cli XAUTOCLAIM'
alias red_XCLAIM='redis-cli XCLAIM'
alias red_XDEL='redis-cli XDEL'
alias red_XGROUP='redis-cli XGROUP'
alias red_XINFO='redis-cli XINFO'
alias red_XLEN='redis-cli XLEN'
alias red_XPENDING='redis-cli XPENDING'
alias red_XRANGE='redis-cli XRANGE'
alias red_XREAD='redis-cli XREAD'
alias red_XREADGROUP='redis-cli XREADGROUP'
alias red_XREVRANGE='redis-cli XREVRANGE'
alias red_XTRIM='redis-cli XTRIM'

# !!
#% <option value="string">
################################################################################
alias red_APPEND='redis-cli APPEND'
alias red_BITCOUNT='redis-cli BITCOUNT'
alias red_BITFIELD='redis-cli BITFIELD'
alias red_BITOP='redis-cli BITOP'
alias red_BITPOS='redis-cli BITPOS'
alias red_DECR='redis-cli DECR'
alias red_DECRBY='redis-cli DECRBY'
alias red_GET='redis-cli GET'
alias red_GETBIT='redis-cli GETBIT'
alias red_GETRANGE='redis-cli GETRANGE'
alias red_GETSET='redis-cli GETSET'
alias red_INCR='redis-cli INCR'
alias red_INCRBY='redis-cli INCRBY'
alias red_INCRBYFLOAT='redis-cli INCRBYFLOAT'
alias red_MGET='redis-cli MGET'
alias red_MSET='redis-cli MSET'
alias red_MSETNX='redis-cli MSETNX'
alias red_PSETEX='redis-cli PSETEX'
alias red_SET='redis-cli SET'
alias red_SETBIT='redis-cli SETBIT'
alias red_SETEX='redis-cli SETEX'
alias red_SETNX='redis-cli SETNX'
alias red_SETRANGE='redis-cli SETRANGE'
alias red_STRALGO='redis-cli STRALGO'
alias red_STRLEN='redis-cli STRLEN'

# !!
#% <option value="pub/sub">
################################################################################
alias red_PSUBSCRIBE='redis-cli PSUBSCRIBE'
alias red_PUBLISH='redis-cli PUBLISH'
alias red_PUBSUB='redis-cli PUBSUB'
alias red_PUNSUBSCRIBE='redis-cli PUNSUBSCRIBE'
alias red_SUBSCRIBE='redis-cli SUBSCRIBE'
alias red_UNSUBSCRIBE='redis-cli UNSUBSCRIBE'

# !!
#% <option value="geo">
################################################################################
alias red_GEOADD='redis-cli GEOADD'
alias red_GEODIST='redis-cli GEODIST'
alias red_GEOHASH='redis-cli GEOHASH'
alias red_GEOPOS='redis-cli GEOPOS'
alias red_GEORADIUS='redis-cli GEORADIUS'
alias red_GEORADIUSBYMEMBER='redis-cli GEORADIUSBYMEMBER'
alias red_GEOSEARCH='redis-cli GEOSEARCH'
alias red_GEOSEARCHSTORE='redis-cli GEOSEARCHSTORE'

# !!
#% <option value="server">
################################################################################
alias red_CAT='redis-cli ACL CAT'
alias red_DELUSER='redis-cli ACL DELUSER'
alias red_GENPASS='redis-cli ACL GENPASS'
alias red_GETUSER='redis-cli ACL GETUSER'
alias red_HELP='redis-cli ACL HELP'
alias red_LIST='redis-cli ACL LIST'
alias red_LOAD='redis-cli ACL LOAD'
alias red_LOG='redis-cli ACL LOG'
alias red_SAVE='redis-cli ACL SAVE'
alias red_SETUSER='redis-cli ACL SETUSER'
alias red_USERS='redis-cli ACL USERS'
alias red_WHOAMI='redis-cli ACL WHOAMI'
alias red_BGREWRITEAOF='redis-cli BGREWRITEAOF'
alias red_BGSAVE='redis-cli BGSAVE'
alias red_COMMAND='redis-cli COMMAND'
alias red_COMMAND_COUNT='redis-cli COMMAND COUNT'
alias red_COMMAND_GETKEYS='redis-cli COMMAND GETKEYS'
alias red_COMMAND_INFO='redis-cli COMMAND INFO'
alias red_CONFIG_GET='redis-cli CONFIG GET'
alias red_CONFIG_RESETSTAT='redis-cli CONFIG RESETSTAT'
alias red_CONFIG_REWRITE='redis-cli CONFIG REWRITE'
alias red_CONFIG_SET='redis-cli CONFIG SET'
alias red_DBSIZE='redis-cli DBSIZE'
alias red_DEBUG_OBJECT='redis-cli DEBUG OBJECT'
alias red_DEBUG_SEGFAULT='redis-cli DEBUG SEGFAULT'
alias red_FLUSHALL='redis-cli FLUSHALL'
alias red_FLUSHDB='redis-cli FLUSHDB'
alias red_INFO='redis-cli INFO'
alias red_LASTSAVE='redis-cli LASTSAVE'
alias red_LATENCY_DOCTOR='redis-cli LATENCY DOCTOR'
alias red_LATENCY_GRAPH='redis-cli LATENCY GRAPH'
alias red_LATENCY_HELP='redis-cli LATENCY HELP'
alias red_LATENCY_HISTORY='redis-cli LATENCY HISTORY'
alias red_LATENCY_LATEST='redis-cli LATENCY LATEST'
alias red_LATENCY_RESET='redis-cli LATENCY RESET'
alias red_LOLWUT='redis-cli LOLWUT'
alias red_MEMORY_DOCTOR='redis-cli MEMORY DOCTOR'
alias red_MEMORY_HELP='redis-cli MEMORY HELP'
alias red_MEMORY_MALLOC-STATS='redis-cli MEMORY MALLOC-STATS'
alias red_MEMORY_PURGE='redis-cli MEMORY PURGE'
alias red_MEMORY_STATS='redis-cli MEMORY STATS'
alias red_MEMORY_USAGE='redis-cli MEMORY USAGE'
alias red_MODULE_LIST='redis-cli MODULE LIST'
alias red_MODULE_LOAD='redis-cli MODULE LOAD'
alias red_MODULE_UNLOAD='redis-cli MODULE UNLOAD'
alias red_MONITOR='redis-cli MONITOR'
alias red_PSYNC='redis-cli PSYNC'
alias red_REPLICAOF='redis-cli REPLICAOF'
alias red_ROLE='redis-cli ROLE'
alias red_SAVE='redis-cli SAVE'
alias red_SHUTDOWN='redis-cli SHUTDOWN'
alias red_SLAVEOF='redis-cli SLAVEOF'
alias red_SLOWLOG='redis-cli SLOWLOG'
alias red_SWAPDB='redis-cli SWAPDB'
alias red_SYNC='redis-cli SYNC'
alias red_TIME='redis-cli TIME'

# !!
#% <option value="connection">
################################################################################
alias red_AUTH='redis-cli AUTH'
alias red_CLIENT_CACHING='redis-cli CLIENT CACHING'
alias red_CLIENT_GETNAME='redis-cli CLIENT GETNAME'
alias red_CLIENT_GETREDIR='redis-cli CLIENT GETREDIR'
alias red_CLIENT_ID='redis-cli CLIENT ID'
alias red_CLIENT_INFO='redis-cli CLIENT INFO'
alias red_CLIENT_KILL='redis-cli CLIENT KILL'
alias red_CLIENT_LIST='redis-cli CLIENT LIST'
alias red_CLIENT_PAUSE='redis-cli CLIENT PAUSE'
alias red_CLIENT_REPLY='redis-cli CLIENT REPLY'
alias red_CLIENT_SETNAME='redis-cli CLIENT SETNAME'
alias red_CLIENT_TRACKING='redis-cli CLIENT TRACKING'
alias red_CLIENT_TRACKINGINFO='redis-cli CLIENT TRACKINGINFO'
alias red_CLIENT_UNBLOCK='redis-cli CLIENT UNBLOCK'
alias red_CLIENT_UNPAUSE='redis-cli CLIENT UNPAUSE'
alias red_ECHO='redis-cli ECHO'
alias red_HELLO='redis-cli HELLO'
alias red_PING='redis-cli PING'
alias red_QUIT='redis-cli QUIT'
alias red_RESET='redis-cli RESET'
alias red_SELECT='redis-cli SELECT'

# !!
#% <option value="cluster">
################################################################################
alias red_CLSTR_ADDSLOTS='redis-cli CLUSTER ADDSLOTS'
alias red_CLSTR_BUMPEPOCH='redis-cli CLUSTER BUMPEPOCH'
alias red_CLSTR_COUNT-FAILURE-REPORTS='redis-cli CLUSTER COUNT-FAILURE-REPORTS'
alias red_CLSTR_COUNTKEYSINSLOT='redis-cli CLUSTER COUNTKEYSINSLOT'
alias red_CLSTR_DELSLOTS='redis-cli CLUSTER DELSLOTS'
alias red_CLSTR_FAILOVER='redis-cli CLUSTER FAILOVER'
alias red_CLSTR_FLUSHSLOTS='redis-cli CLUSTER FLUSHSLOTS'
alias red_CLSTR_FORGET='redis-cli CLUSTER FORGET'
alias red_CLSTR_GETKEYSINSLOT='redis-cli CLUSTER GETKEYSINSLOT'
alias red_CLSTR_INFO='redis-cli CLUSTER INFO'
alias red_CLSTR_KEYSLOT='redis-cli CLUSTER KEYSLOT'
alias red_CLSTR_MEET='redis-cli CLUSTER MEET'
alias red_CLSTR_MYID='redis-cli CLUSTER MYID'
alias red_CLSTR_NODES='redis-cli CLUSTER NODES'
alias red_CLSTR_REPLICAS='redis-cli CLUSTER REPLICAS'
alias red_CLSTR_REPLICATE='redis-cli CLUSTER REPLICATE'
alias red_CLSTR_RESET='redis-cli CLUSTER RESET'
alias red_CLSTR_SAVECONFIG='redis-cli CLUSTER SAVECONFIG'
alias red_CLSTR_SET-CONFIG-EPOCH='redis-cli CLUSTER SET-CONFIG-EPOCH'
alias red_CLSTR_SETSLOT='redis-cli CLUSTER SETSLOT'
alias red_CLSTR_SLAVES='redis-cli CLUSTER SLAVES'
alias red_CLSTR_SLOTS='redis-cli CLUSTER SLOTS'
alias red_READONLY='redis-cli READONLY'
alias red_READWRITE='redis-cli READWRITE'

# !!
#% <option value="transactions">
################################################################################
alias red_DISCARD='redis-cli DISCARD'
alias red_EXEC='redis-cli EXEC'
alias red_MULTI='redis-cli MULTI'
alias red_UNWATCH='redis-cli UNWATCH'
alias red_WATCH='redis-cli WATCH'

# !!
#% <option value="scripting">
################################################################################
alias red_EVAL='redis-cli EVAL'
alias red_EVALSHA='redis-cli EVALSHA'
alias red_SCRIPT_DEBUG='redis-cli SCRIPT DEBUG'
alias red_SCRIPT_EXISTS='redis-cli SCRIPT EXISTS'
alias red_SCRIPT_FLUSH='redis-cli SCRIPT FLUSH'
alias red_SCRIPT_KILL='redis-cli SCRIPT KILL'
alias red_SCRIPT_LOAD='redis-cli SCRIPT LOAD'
