require('dotenv').config();
const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

async function main() {
  const { rows } = await pool.query(`
    SELECT title, difficulty, LENGTH(text_content) as len
    FROM exercises 
    WHERE difficulty IN ('medium', 'hard')
    LIMIT 10
  `);
  console.log(rows);
  pool.end();
}

main();