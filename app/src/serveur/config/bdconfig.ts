import { SERVEUR, USAGER, PASS, BD } from './env_vars';
// const mysql = require("mysql");

// export const connexion = mysql.createConnection({
//   host: SERVEUR,
//   user: USAGER,
//   password: PASS,
//   database: BD
// });

const mysql = require("mysql2/promise");

// Create the connection pool. The pool-specific settings are the defaults
export const pool = mysql.createPool({
  host: SERVEUR,
  user: USAGER,
  password: PASS,
  database: BD,
  waitForConnections: true,
  connectionLimit: 20
});