require('dotenv').config();
const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL
});

async function main() {
  const { rows } = await pool.query(`
    SELECT public_id, title, category, difficulty,
       CASE 
         WHEN LENGTH(text_content) < 200 THEN 'short'
         WHEN LENGTH(text_content) >= 200 AND LENGTH(text_content) < 450 THEN 'medium'
         ELSE 'long'
       END as duration
    FROM exercises
    LIMIT 5
  `);
  console.log(rows);
  pool.end();
}

main();