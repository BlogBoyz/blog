const server = require('./server')

const PORT = process.env.PORT;

server.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
