/** @format */

const myString = `connecting: false,
  _hadError: false,
  _handle:
   TCP {
     reading: true,
     onread: [Function: onStreamRead
        ],
     onconnection: null,
     _consumed: true,
        [Symbol(owner)
        ]: [Circular
        ]
    },
  _parent: null,
  _host: null,
  _readableState:
   ReadableState {
     objectMode: false,
     highWaterMark: 16384,
     buffer: BufferList { head: null, tail: null, length: 0
        },
     length: 0,
     pipes: null,
     pipesCount: 0,
     flowing: true,
     ended: false,
     endEmitted: false,
     reading: true,
     sync: false,
     needReadable: true,
     emittedReadable: false,
     readableListening: false,
     resumeScheduled: true,
     paused: false,
     emitClose: false,
     autoDestroy: false,
     destroyed: false,
     defaultEncoding: 'utf8',
     awaitDrain: 0,
     readingMore: false,
     decoder: null,
     encoding: null
    },
  readable: true,
  _events: [Object: null prototype
    ] {
     end: [
            [Function: onReadableStreamEnd
            ],
            [Function: bound socketOnEnd
            ]
        ],
     drain: [
            [Function: ondrain
            ],
            [Function: bound socketOnDrain
            ]
        ],
     timeout: [Function: socketOnTimeout
        ],
     data: [Function: bound socketOnData
        ],
     error: [Function: socketOnError
        ],
     close: [Function: bound socketOnClose
        ],
     resume: [Function: onSocketResume
        ],
     pause: [Function: onSocketPause
        ]
    },
  _eventsCount: 8,
  _maxListeners: undefined,
  _writableState:
   WritableState {
     objectMode: false,
     highWaterMark: 16384,
     finalCalled: false,
     needDrain: false,
     ending: false,
     ended: false,
     finished: false,
     destroyed: false,
     decodeStrings: false,
     defaultEncoding: 'utf8',
     length: 0,
     writing: false,
     corked: 0,
     sync: true,
     bufferProcessing: false,
     onwrite: [Function: bound onwrite
        ],
     writecb: null,
     writelen: 0,
     bufferedRequest: null,
     lastBufferedRequest: null,
     pendingcb: 0,
     prefinished: false,
     errorEmitted: false,
     emitClose: false,
     autoDestroy: false,
     bufferedRequestCount: 0,
     corkedRequestsFree: { next: null,
        entry: null,
        finish: [Function: bound onCorkedFinish
            ]
        }
    },
  writable: true,
  allowHalfOpen: true,
  _sockname: null,
  _pendingData: null,
  _pendingEncoding: '',
  server:
   Server {
     _events: [Object: null prototype
        ] {
        request: [EventEmitter
            ],
        connection: [Array
            ],
        close: [Function
            ]
        },
     _eventsCount: 3,
     _maxListeners: undefined,
     _connections: 1,
     _handle:
      TCP {
        reading: false,
        onread: null,
        onconnection: [Function: onconnection
            ],
            [Symbol(owner)
            ]: [Circular
            ]
        },
     _usingWorkers: false,
     _workers: [],
     _unref: false,
     allowHalfOpen: true,
     pauseOnConnect: false,
     httpAllowHalfOpen: false,
     timeout: 120000,
     keepAliveTimeout: 5000,
     _pendingResponseData: 0,
     maxHeadersCount: null,
     headersTimeout: 40000,
     _connectionKey: '6: : : : 5050',
        [Symbol(IncomingMessage)
        ]: [Function: IncomingMessage
        ],
        [Symbol(ServerResponse)
        ]: [Function: ServerResponse
        ],
        [Symbol(asyncId)
        ]: 4
    },
  _server:
   Server {
     _events: [Object: null prototype
        ] {
        request: [EventEmitter
            ],
        connection: [Array
            ],
        close: [Function
            ]
        },
     _eventsCount: 3,
     _maxListeners: undefined,
     _connections: 1,
     _handle:
      TCP {
        reading: false,
        onread: null,
        onconnection: [Function: onconnection
            ],
            [Symbol(owner)
            ]: [Circular
            ]
        },
     _usingWorkers: false,
     _workers: [],
     _unref: false,
     allowHalfOpen: true,
     pauseOnConnect: false,
     httpAllowHalfOpen: false,
     timeout: 120000,
     keepAliveTimeout: 5000,
     _pendingResponseData: 0,
     maxHeadersCount: null,
     headersTimeout: 40000,
     _connectionKey: '6: : : : 5050',
        [Symbol(IncomingMessage)
        ]: [Function: IncomingMessage
        ],
        [Symbol(ServerResponse)
        ]: [Function: ServerResponse
        ],
        [Symbol(asyncId)
        ]: 4
    },
  timeout: 120000,
  parser:
   HTTPParser {
     '0': [Function: parserOnHeaders
        ],
     '1': [Function: parserOnHeadersComplete
        ],
     '2': [Function: parserOnBody
        ],
     '3': [Function: parserOnMessageComplete
        ],
     '4': [Function: bound onParserExecute
        ],
     _headers: [],
     _url: '',
     socket: [Circular
        ],
     incoming: null,
     outgoing: null,
     maxHeaderPairs: 2000,
     _consumed: true,
     onIncoming: [Function: bound parserOnIncoming
        ],
     parsingHeadersStart: 1551653167566,
        [Symbol(isReused)
        ]: false
    },
  on: [Function: socketOnWrap
    ],
  _paused: false,
    [Symbol(asyncId)
    ]: 8,
    [Symbol(lastWriteQueueSize)
    ]: 0,
    [Symbol(timeout)
    ]:
   Timeout {
     _idleTimeout: 120000,
     _idlePrev:
      TimersList {
        _idleNext: [Circular
            ],
        _idlePrev: [Circular
            ],
        expiry: 123140,
        id: -9007199254740991,
        msecs: 120000,
        priorityQueuePosition: 2
        },
     _idleNext:
      TimersList {
        _idleNext: [Circular
            ],
        _idlePrev: [Circular
            ],
        expiry: 123140,
        id: -9007199254740991,
        msecs: 120000,
        priorityQueuePosition: 2
        },
     _idleStart: 3140,
     _onTimeout: [Function: bound
        ],
     _timerArgs: undefined,
     _repeat: null,
     _destroyed: false,
        [Symbol(refed)
        ]: false,
        [Symbol(asyncId)
        ]: 9,
        [Symbol(triggerId)
        ]: 8
    },
    [Symbol(kBytesRead)
    ]: 0,
    [Symbol(kBytesWritten)
    ]: 0
}

> socket counts = 1
> Opening: socket Id2 registred
    'sockets[
    2
]' = [object Object
]
Socket {
  connecting: false,
  _hadError: false,
  _handle:
   TCP {
     reading: true,
     onread: [Function: onStreamRead
        ],
     onconnection: null,
     _consumed: true,
        [Symbol(owner)
        ]: [Circular
        ]
    },
  _parent: null,
  _host: null,
  _readableState:
   ReadableState {
     objectMode: false,
     highWaterMark: 16384,
     buffer: BufferList { head: null, tail: null, length: 0
        },
     length: 0,
     pipes: null,
     pipesCount: 0,
     flowing: true,
     ended: false,
     endEmitted: false,
     reading: true,
     sync: false,
     needReadable: true,
     emittedReadable: false,
     readableListening: false,
     resumeScheduled: true,
     paused: false,
     emitClose: false,
     autoDestroy: false,
     destroyed: false,
     defaultEncoding: 'utf8',
     awaitDrain: 0,
     readingMore: false,
     decoder: null,
     encoding: null
    },
  readable: true,
  _events: [Object: null prototype
    ] {
     end: [
            [Function: onReadableStreamEnd
            ],
            [Function: bound socketOnEnd
            ]
        ],
     drain: [
            [Function: ondrain
            ],
            [Function: bound socketOnDrain
            ]
        ],
     timeout: [Function: socketOnTimeout
        ],
     data: [Function: bound socketOnData
        ],
     error: [Function: socketOnError
        ],
     close: [Function: bound socketOnClose
        ],
     resume: [Function: onSocketResume
        ],
     pause: [Function: onSocketPause
        ]
    },
  _eventsCount: 8,
  _maxListeners: undefined,
  _writableState:
   WritableState {
     objectMode: false,
     highWaterMark: 16384,
     finalCalled: false,
     needDrain: false,
     ending: false,
     ended: false,
     finished: false,
     destroyed: false,
     decodeStrings: false,
     defaultEncoding: 'utf8',
     length: 0,
     writing: false,
     corked: 0,
     sync: true,
     bufferProcessing: false,
     onwrite: [Function: bound onwrite
        ],
     writecb: null,
     writelen: 0,
     bufferedRequest: null,
     lastBufferedRequest: null,
     pendingcb: 0,
     prefinished: false,
     errorEmitted: false,
     emitClose: false,
     autoDestroy: false,
     bufferedRequestCount: 0,
     corkedRequestsFree: { next: null,
        entry: null,
        finish: [Function: bound onCorkedFinish
            ]
        }
    },
  writable: true,
  allowHalfOpen: true,
  _sockname: null,
  _pendingData: null,
  _pendingEncoding: '',
  server:
   Server {
     _events: [Object: null prototype
        ] {
        request: [EventEmitter
            ],
        connection: [Array
            ],
        close: [Function
            ]
        },
     _eventsCount: 3,
     _maxListeners: undefined,
     _connections: 2,
     _handle:
      TCP {
        reading: false,
        onread: null,
        onconnection: [Function: onconnection
            ],
            [Symbol(owner)
            ]: [Circular
            ]
        },
     _usingWorkers: false,
     _workers: [],
     _unref: false,
     allowHalfOpen: true,
     pauseOnConnect: false,
     httpAllowHalfOpen: false,
     timeout: 120000,
     keepAliveTimeout: 5000,
     _pendingResponseData: 0,
     maxHeadersCount: null,
     headersTimeout: 40000,
     _connectionKey: '6: : : : 5050',
        [Symbol(IncomingMessage)
        ]: [Function: IncomingMessage
        ],
        [Symbol(ServerResponse)
        ]: [Function: ServerResponse
        ],
        [Symbol(asyncId)
        ]: 4
    },
  _server:
   Server {
     _events: [Object: null prototype
        ] {
        request: [EventEmitter
            ],
        connection: [Array
            ],
        close: [Function
            ]
        },
     _eventsCount: 3,
     _maxListeners: undefined,
     _connections: 2,
     _handle:
      TCP {
        reading: false,
        onread: null,
        onconnection: [Function: onconnection
            ],
            [Symbol(owner)
            ]: [Circular
            ]
        },
     _usingWorkers: false,
     _workers: [],
     _unref: false,
     allowHalfOpen: true,
     pauseOnConnect: false,
     httpAllowHalfOpen: false,
     timeout: 120000,
     keepAliveTimeout: 5000,
     _pendingResponseData: 0,
     maxHeadersCount: null,
     headersTimeout: 40000,
     _connectionKey: '6: : : : 5050',
        [Symbol(IncomingMessage)
        ]: [Function: IncomingMessage
        ],
        [Symbol(ServerResponse)
        ]: [Function: ServerResponse
        ],
        [Symbol(asyncId)
        ]: 4
    },
  timeout: 120000,
  parser:
   HTTPParser {
     '0': [Function: parserOnHeaders
        ],
     '1': [Function: parserOnHeadersComplete
        ],
     '2': [Function: parserOnBody
        ],
     '3': [Function: parserOnMessageComplete
        ],
     '4': [Function: bound onParserExecute
        ],
     _headers: [],
     _url: '',
     socket: [Circular
        ],
     incoming: null,
     outgoing: null,
     maxHeaderPairs: 2000,
     _consumed: true,
     onIncoming: [Function: bound parserOnIncoming
        ],
     parsingHeadersStart: 1551653167566,
        [Symbol(isReused)
        ]: false
    },
  on: [Function: socketOnWrap
    ],
  _paused: false,
    [Symbol(asyncId)
    ]: 17,
    [Symbol(lastWriteQueueSize)
    ]: 0,
    [Symbol(timeout)
    ]:
   Timeout {
     _idleTimeout: 120000,
     _idlePrev:
      TimersList {
        _idleNext: [Circular
            ],
        _idlePrev: [Timeout
            ],
        expiry: 123140,
        id: -9007199254740991,
        msecs: 120000,
        priorityQueuePosition: 2
        },
     _idleNext:
      Timeout {
        _idleTimeout: 120000,
        _idlePrev: [Circular
            ],
        _idleNext: [TimersList
            ],
        _idleStart: 3140,
        _onTimeout: [Function: bound
            ],
        _timerArgs: undefined,
        _repeat: null,
        _destroyed: false,
            [Symbol(refed)
            ]: false,
            [Symbol(asyncId)
            ]: 9,
            [Symbol(triggerId)
            ]: 8
        },
     _idleStart: 3190,
     _onTimeout: [Function: bound
        ],
     _timerArgs: undefined,
     _repeat: null,
     _destroyed: false,
        [Symbol(refed)
        ]: false,
        [Symbol(asyncId)
        ]: 18,
        [Symbol(triggerId)
        ]: 17
    },
    [Symbol(kBytesRead)
    ]: 0,
    [Symbol(kBytesWritten)
    ]: 0
`;

function spitJson(inputString: string): string {
  const keyords = ['true', 'false', 'null'];
  if (keyords.includes(inputString)) return inputString;
  if (Number(inputString) !== NaN) return inputString;
  if (
    inputString.indexOf('[') === 0 &&
    inputString.length - inputString.lastIndexOf(']') === 1
  ) {
    return `[${spitJson(inputString.substring(1, inputString.length - 2))}]`;
  }

  if (
    inputString.indexOf('{') === 0 &&
    inputString.length - inputString.lastIndexOf('}') === 1
  ) {
    return `[${spitJson(inputString.substring(1, inputString.length - 2))}]`;
  }

  if (inputString === '') return inputString;
  if (inputString.indexOf('\n') !== -1) {
    return inputString
      .split('\n')
      .map(element => {
        return spitJson(element);
      })
      .join('\n');
  }
  if (inputString.indexOf('\n')) {
  }
  if (inputString.indexOf('\n')) {
  }
  if (inputString.indexOf('\n')) {
  }

  //   inputString.split('\n').map(element => {
  //     let valid: boolean;
  //     valid = true;

  //     if ( element.indexOf('}') === -1)
  //     if (!valid || element.indexOf('{') === -1)
  //     if (!valid || element.indexOf('[') === -1)
  //     if (!valid || element.indexOf(']') === -1)
  //     if (valid) {
  //         // element.split(',')
  //     }
  //   });
  // .join('')
  // .split(',')
  // .map((val, i, splits) => {
  //     if (val.indexOf('}') !== -1) {

  //     }
  //     if (val.indexOf(']') !== -1) {
  //     }
  // });
  return '';
}
myString
  .split('\n')
  .join('')
  .split(',')
  .map((val, i, splits) => {
    if (val.indexOf('}') !== -1) {
    }
    if (val.indexOf(']') !== -1) {
    }
  });
