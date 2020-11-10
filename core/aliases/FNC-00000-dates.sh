function getstamp8() {
  echo -n "Z$(sha224hmac <<<${1:-$(date +%D%s%N)} | cut -c -8 | tr \[a-z\] \[A-Z\])x"
}

function getstamp4() {
  echo -n $(sha224hmac <<<$(date +%D%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])
}

function getstamp6() {
  echo -n \#$(sha224hmac <<<$(date +%D%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])
}

function getstampa() {
  echo -n "$(getstamp4)-$(getstamp4)x"
}

function getstampd() {
  echo -n "$(getdatestamp)-$(getstamp4)x"
}

function getstampdy() {
  echo -n "$(getdatestampy)-$(getstamp4)x"
}

function getstampdyy() {
  echo -n "$(getdatestampyy)-$(getstamp4)"
}

function getstampdtyy() {
  echo -n "$(getdatestampyy)-$(gettimestamp)-$(getstamp4)"
}

function getdatestamp() {
  echo -n $(date +%m%d)
}

function getdatestampy() {
  echo -n $(date +%y%m%d)
}

function getdatestampyy() {
  echo -n $(date +%Y%m%d)
}

function getdatestampu() {
  echo -n $(date --utc +%m%d)
}

function getdatestampyu() {
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

function getstamphelp() {
  echo "getstamp8"
  echo "getstamp4"
  echo "getstamp6"
  echo "getstampa"
  echo "getstampd"
  echo "getstampdy"
  echo "getstampdyy"
  echo "getstampdtyy"
  echo "getdatestamp"
  echo "getdatestampy"
  echo "getdatestampyy"
  echo "getdatestampu"
  echo "getdatestampyu"
  echo "gettimestamp"
  echo "gettimestampz"
  echo "gettimestampu"
  echo "gettimeshortstampu"
  echo "getepochstamp"
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
