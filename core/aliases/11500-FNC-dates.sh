function getstamp8() {
  echo -n "Z$(sha224hmac <<<${1:-$(date +%D%s%N)} | cut -c -8 | tr \[a-z\] \[A-Z\])x"
}

function getstamp6() {
  echo -n \#$(sha224hmac <<<$(date +%D%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])
}

function getstamp4() {
  echo -n "$(sha224hmac <<<$(date +%D%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])"
}

function getstamp2() {
  echo -n "$(sha224hmac <<<$(date +%D%s%N) | cut -c -2 | tr \[a-z\] \[A-Z\])"
}

function getstamp1() {
  echo -n "$(sha224hmac <<<$(date +%D%s%N) | cut -c -1 | tr \[a-z\] \[A-Z\])"
}

function getstampa() {
  echo -n "$(getstamp4)-$(getstamp4)x"
}

function getstampd() {
  echo -n "$(getdate)-$(getstamp4)x"
}

function getstampdy() {
  echo -n "$(getdatey)-0x$(getstamp4)r"
}

function getstampdyy() {
  echo -n "$(getdateyy)-$(getstamp4)"
}

function getstampdtyy() {
  echo -n "$(getdateyy)-$(gettimestamp)-$(getstamp4)"
}
function getstampdty() {
  echo -n "$(getdatey)-$(gettimestamp)-0x$(getstamp4)r"
}
function getdate() {
  echo -n $(date +%m%d)
}

function getdatey() {
  echo -n $(date +%y%m%d)
}

function getdateyy() {
  echo -n $(date +%Y%m%d)
}

function getdateu() {
  echo -n $(date --utc +%m%d)
}

function getdateyu() {
  echo -n $(date --utc +%y%m%d)
}

function gettimestamp() {
  echo -n $(date +%H%M%S)
}

function gettimestampz() {
  echo -n $(date +%H%M%S%Z)
}

function gettimestampu() {
  echo -n $(date --utc +%H%M%S%Z)
}

function gettimeshortstampu() {
  echo -n $(date --utc +%H%M%S)
}

function getepochstamp() {
  echo -n $(date +%s)
}

function getnanoepochstamp() {
  echo -n $(date +%s%N)
}

function getstamphelp() {
  echo "getstamp8: $(getstamp8)"
  echo "getstamp6: $(getstamp6)"
  echo "getstamp4: $(getstamp4)"
  echo "getstamp2: $(getstamp2)"
  echo "getstamp1: $(getstamp1)"
  echo "getstampa: $(getstampa)"
  echo "getstampd: $(getstampd)"
  echo "getstampdy: $(getstampdy)"
  echo "getstampdyy: $(getstampdyy)"
  echo "getstampdtyy: $(getstampdtyy)"
  echo "getstampdty: $(getstampdty)"
  echo "getdate: $(getdate)"
  echo "getdatey: $(getdatey)"
  echo "getdateyy: $(getdateyy)"
  echo "getdateu: $(getdateu)"
  echo "getdateyu: $(getdateyu)"
  echo "gettimestamp: $(gettimestamp)"
  echo "gettimestampz: $(gettimestampz)"
  echo "gettimestampu: $(gettimestampu)"
  echo "gettimeshortstampu: $(gettimeshortstampu)"
  echo "getepochstamp: $(getepochstamp)"
  echo "getnanoepochstamp: $(getnanoepochstamp)"
  echo "getstamphelp: print this help menu"
  echo "getSTMP8_: $(getSTMP8_)"
  echo "getSTMP4_: $(getSTMP4_)"
  echo "getSTMP6_: $(getSTMP6_)"
  echo "getSTMP8a_: $(getSTMP8a_)"
}

function getSTMP8_() {
  echo -n Z-$(sha224hmac <<<$(date +%D%s%N) | cut -c -8 | tr \[a-z\] \[A-Z\])
}

function getSTMP4_() {
  echo -n $(sha224hmac <<<$(date +%D%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])
}

function getSTMP6_() {
  echo -n \#$(sha224hmac <<<$(date +%D%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])
}

function getSTMP8a_() {
  echo -n "$(getSTMP4_)-$(getSTMP4_)x"
}
