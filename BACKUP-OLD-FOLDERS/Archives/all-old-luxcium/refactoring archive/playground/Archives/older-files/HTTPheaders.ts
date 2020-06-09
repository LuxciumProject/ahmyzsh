/** @format */
function setHeader(res, statusCode: number = 200) {
  res.setHeader('Connection', 'Transfer-Encoding');
  res.setHeader('Transfer-Encoding', 'chunked');
  res.setHeader('Cache-Control', 'public, max-age=864000');
  res.setHeader('Content-Type', 'text/html; charset=utf-8');
  res.setHeader('X-Content-Type-Options', 'nosniff');
  res.status(statusCode);
  console.log(
    `function setHeader setted statusCode: ${statusCode} and will return 'res'`
  );
  return res;
}
export default setHeader;
