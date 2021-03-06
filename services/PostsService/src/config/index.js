const serverSettings = {
  HOST: process.env.HOST,
  PORT: process.env.PORT
};

const databaseSettings = {
  // HOST: process.env.HOST
};

const loggerSettings = {
  mode: 'dev',
  other: {}
};

module.exports = Object.assign({}, {
  serverSettings,
  databaseSettings,
  loggerSettings
});