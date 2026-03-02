require('dotenv').config();
const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

async function main() {
  const { rows } = await pool.query('SELECT title, LENGTH(text_content) as len FROM exercises LIMIT 15');
  console.log(rows);
  pool.end();
}

main();