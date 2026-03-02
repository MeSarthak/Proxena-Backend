const fs = require('fs');
const path = require('path');

const baseTitles = {
  // Easy
  "I like to walk in the park.": "Walking in the Park",
  "The sky is very blue today.": "The Blue Sky",
  "Do you want to get some coffee?": "Getting Coffee",
  "My dog loves to play fetch.": "Playing Fetch",
  "She reads a book every night.": "Reading Every Night",
  "We are going to the store.": "Going to the Store",
  "He plays guitar very well.": "Playing the Guitar",
  "The food is getting cold.": "Cold Food",
  "Can you help me with this?": "Asking for Help",
  "It is raining outside right now.": "Raining Outside",

  // Medium
  "Whenever I have free time, I enjoy walking through the local botanical gardens.": "Botanical Gardens Walk",
  "The coffee shop on the corner makes the best espresso I have ever tasted.": "The Best Espresso",
  "Learning a new language can be challenging, but it is also incredibly rewarding.": "Learning a New Language",
  "Make sure you double check all your work before submitting the final report.": "Double Checking Work",
  "We decided to take a spontaneous road trip across the country last summer.": "Spontaneous Road Trip",
  "The new software update includes several important security patches and bug fixes.": "Software Update Patches",
  "I usually prefer reading historical fiction over science fiction or fantasy novels.": "Historical Fiction Preference",
  "She has been practicing the piano for five years and plays beautifully.": "Practicing the Piano",
  "If you want to succeed in this industry, you need to build a strong network.": "Building a Strong Network",
  "The weather forecast predicts heavy thunderstorms for the entire weekend.": "Heavy Thunderstorms Forecast",

  // Hard
  "Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.": "Overcoming Project Challenges",
  "The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.": "Geopolitical Landscape Analysis",
  "Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.": "Advancements in AI",
  "To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.": "Mitigating Climate Change",
  "The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body's defense mechanisms.": "Human Immune System",
  "While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.": "Nature of Consciousness",
  "In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.": "Inclusive Workplace Environment",
  "The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.": "Global Financial Markets",
  "Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.": "Mastering a Musical Instrument",
  "The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.": "Civic Center Architecture"
};

const categories = [
  'conversation', 'storytelling', 'emotions', 'interview', 'daily',
  'business', 'news', 'travel', 'academic', 'tongue_twisters',
  'classic_literature', 'politics', 'geopolitics', 'speech', 'diplomatic',
  'formal', 'sports', 'technology', 'diagnostic', 'ielts'
];

let sql = `-- Migration 016: Update exercise titles to be more descriptive based on content
-- Replaces generic "Category Practice EASY #1" with semantic names based on the base text

`;

for (const [text, baseTitle] of Object.entries(baseTitles)) {
  for (const category of categories) {
    const formattedCategory = category.charAt(0).toUpperCase() + category.slice(1).replace('_', ' ');
    // Construct the semantic title, e.g., "Walking in the Park - Conversation"
    const finalTitle = `${baseTitle} (${formattedCategory})`;
    
    // We update exercises that match the base text and the category
    const safeText = text.replace(/'/g, "''");
    const safeFinalTitle = finalTitle.replace(/'/g, "''");
    
    sql += `UPDATE exercises \n`;
    sql += `SET title = '${safeFinalTitle}' \n`;
    sql += `WHERE text_content LIKE '${safeText}%' \n`;
    sql += `  AND category = '${category}';\n\n`;
  }
}

const outPath = path.join(__dirname, 'src', 'migrations', '016_update_exercise_titles.sql');
fs.writeFileSync(outPath, sql);
console.log(`Generated migration 016 to fix titles`);
