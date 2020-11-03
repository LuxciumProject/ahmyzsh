function getstamp8() {
  echo -n Z$(sha224hmac <<<$(date +%D%s%N) | cut -c -8 | tr \[a-z\] \[A-Z\])x
}

function getstamp4() {
  echo -n $(sha224hmac <<<$(date +%D%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])
}

function getstamp6() {
  echo -n \#$(sha224hmac <<<$(date +%D%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])
}

function getstamp8a() {
  echo -n "$(getstamp4)-$(getstamp4)x"
}

function getstamp8d() {
  echo -n "$(getdatestamp)-$(getstamp4)x"
}

function getstamp8dy() {
  echo -n "$(getdatestampy)-$(getstamp4)x"
}

function getstamp8dyy() {
  echo -n "$(getdatestampyy)-$(getstamp4)"
}

function getstamp8dtyy() {
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
  echo "getstamp8a"
  echo "getstamp8d"
  echo "getstamp8dy"
  echo "getstamp8dyy"
  echo "getstamp8dtyy"
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
