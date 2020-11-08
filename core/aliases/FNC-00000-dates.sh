function AHMYZSH_CORE() {
  echo -n "Z$(sha224hmac <<<${1:-$(date +%D%s%N)} | cut -c -8 | tr \[a-z\] \[A-Z\])x"
}

function getstamp4() {
  echo -n $(sha224hmac <<<$(date +%D%s%N) | cut -c -4 | tr \[a-z\] \[A-Z\])
}

function getstamp6() {
  echo -n \#$(sha224hmac <<<$(date +%D%s%N) | cut -c -6 | tr \[a-z\] \[A-Z\])
}

function AHMYZSH_COREa() {
  echo -n "$(getstamp4)-$(getstamp4)x"
}

function AHMYZSH_COREd() {
  echo -n "$(getdatestamp)-$(getstamp4)x"
}

function AHMYZSH_COREdy() {
  echo -n "$(getdatestampy)-$(getstamp4)x"
}

function AHMYZSH_COREdyy() {
  echo -n "$(getdatestampyy)-$(getstamp4)"
}

function AHMYZSH_COREdtyy() {
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
  echo "AHMYZSH_CORE"
  echo "getstamp4"
  echo "getstamp6"
  echo "AHMYZSH_COREa"
  echo "AHMYZSH_COREd"
  echo "AHMYZSH_COREdy"
  echo "AHMYZSH_COREdyy"
  echo "AHMYZSH_COREdtyy"
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
