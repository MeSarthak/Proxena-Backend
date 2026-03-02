require('dotenv').config();
const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

async function main() {
  const { rows } = await pool.query(`
    SELECT title, text_content 
    FROM exercises 
    WHERE title LIKE '%(Conversation)%' 
    LIMIT 3
  `);
  console.log(rows);
  pool.end();
}

main();