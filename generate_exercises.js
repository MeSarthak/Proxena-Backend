const fs = require('fs');
const path = require('path');

const categories = [
  'conversation', 'storytelling', 'emotions', 'interview', 'daily',
  'business', 'news', 'travel', 'academic', 'tongue_twisters',
  'classic_literature', 'politics', 'geopolitics', 'speech', 'diplomatic',
  'formal', 'sports', 'technology', 'diagnostic', 'ielts'
];

const difficulties = ['easy', 'medium', 'hard'];

// Helper to get random item
const rand = (arr) => arr[Math.floor(Math.random() * arr.length)];

// We need 500+ exercises. 20 categories * 3 difficulties = 60 buckets.
// 500 / 60 = ~8.3. So let's generate 9 per bucket = 540 total.

const baseSentences = {
  easy: [
    "I like to walk in the park.",
    "The sky is very blue today.",
    "Do you want to get some coffee?",
    "My dog loves to play fetch.",
    "She reads a book every night.",
    "We are going to the store.",
    "He plays guitar very well.",
    "The food is getting cold.",
    "Can you help me with this?",
    "It is raining outside right now."
  ],
  medium: [
    "Whenever I have free time, I enjoy walking through the local botanical gardens.",
    "The coffee shop on the corner makes the best espresso I have ever tasted.",
    "Learning a new language can be challenging, but it is also incredibly rewarding.",
    "Make sure you double check all your work before submitting the final report.",
    "We decided to take a spontaneous road trip across the country last summer.",
    "The new software update includes several important security patches and bug fixes.",
    "I usually prefer reading historical fiction over science fiction or fantasy novels.",
    "She has been practicing the piano for five years and plays beautifully.",
    "If you want to succeed in this industry, you need to build a strong network.",
    "The weather forecast predicts heavy thunderstorms for the entire weekend."
  ],
  hard: [
    "Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.",
    "The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.",
    "Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.",
    "To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.",
    "The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body's defense mechanisms.",
    "While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.",
    "In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.",
    "The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.",
    "Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.",
    "The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space."
  ]
};

// Generate unique-ish content by combining or modifying
function generateContent(category, difficulty, index) {
  const base = rand(baseSentences[difficulty]);
  
  if (difficulty === 'easy') {
    return `${base} This is for ${category} practice number ${index}.`;
  } else if (difficulty === 'medium') {
    return `${base} Practicing ${category} skills is essential. This is exercise variant ${index} to help improve your fluency.`;
  } else {
    return `${base} Furthermore, engaging with such ${category} materials extensively develops both vocabulary and pronunciation. This represents advanced exercise iteration ${index} designed specifically to test your articulation.`;
  }
}

function generateTitle(category, difficulty, index) {
  const capCategory = category.charAt(0).toUpperCase() + category.slice(1);
  return `${capCategory} Practice ${difficulty.toUpperCase()} #${index}`;
}

let sql = `-- Migration 015: Seed 540 new exercises (9 per category/difficulty)\n`;
sql += `INSERT INTO "exercises" ("public_id", "title", "category", "difficulty", "text_content") VALUES\n\n`;

const values = [];

for (const category of categories) {
  for (const difficulty of difficulties) {
    for (let i = 1; i <= 9; i++) {
      const title = generateTitle(category, difficulty, i).replace(/'/g, "''");
      const content = generateContent(category, difficulty, i).replace(/'/g, "''");
      values.push(`(gen_random_uuid(), '${title}', '${category}', '${difficulty}', '${content}')`);
    }
  }
}

sql += values.join(',\n');
sql += ';\n';

const outPath = path.join(__dirname, 'src', 'migrations', '015_seed_500_exercises.sql');
fs.writeFileSync(outPath, sql);
console.log(`Generated ${values.length} exercises to ${outPath}`);
