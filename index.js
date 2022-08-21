const http = require('http');
const port = process.env.PORT || 9000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hello Node from Test Yasser \n'
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
