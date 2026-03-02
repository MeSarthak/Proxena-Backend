-- Migration 011: Seed IELTS cue card exercises + Diagnostic test exercises

-- IELTS Speaking Part 2 - Cue Cards
INSERT INTO "exercises" ("public_id", "title", "category", "difficulty", "text_content") VALUES

(gen_random_uuid(), 'Describe a Place You Love', 'ielts', 'medium',
  'Describe a place you have visited that you particularly liked. You should say where the place is, when you went there, what you did there, and explain why you liked it so much. I visited a small coastal village in the south of France last summer. The village was nestled between green hills and the sparkling Mediterranean Sea. I spent my days exploring narrow cobblestone streets, visiting local markets, and enjoying fresh seafood at waterfront restaurants. What I loved most about this place was the peaceful atmosphere and the warmth of the local people who always greeted visitors with genuine smiles.'),

(gen_random_uuid(), 'Describe a Person Who Inspired You', 'ielts', 'medium',
  'Describe a person who has had a significant influence on your life. You should say who this person is, how you know them, what they have done that influenced you, and explain why they had such an impact. The person who has influenced me the most is my high school English teacher, Mrs. Patterson. She had an extraordinary ability to make literature come alive in the classroom. She encouraged me to express my thoughts confidently and taught me that making mistakes is an essential part of learning. Her patience and dedication showed me that great teaching is not just about sharing knowledge but about inspiring curiosity and building confidence in students.'),

(gen_random_uuid(), 'Describe a Goal You Achieved', 'ielts', 'hard',
  'Describe a goal you set for yourself and successfully achieved. You should say what the goal was, why you set this goal, what you did to achieve it, and explain how you felt when you achieved it. Two years ago, I decided to run a marathon, which was a significant challenge because I had never been a particularly athletic person. I set this goal because I wanted to prove to myself that discipline and persistence could overcome any limitation. I followed a structured training program for six months, gradually increasing my distance each week. There were moments when I wanted to give up, especially during long runs in difficult weather conditions. However, the sense of accomplishment I felt crossing the finish line was absolutely indescribable and taught me that our potential is far greater than we often believe.'),

(gen_random_uuid(), 'Describe a Skill You Want to Learn', 'ielts', 'medium',
  'Describe a skill you would like to learn in the future. You should say what the skill is, why you want to learn it, how you plan to learn it, and explain how this skill would benefit you. I have always wanted to learn to play the piano. Music has been a constant source of joy in my life, and I believe that being able to create music myself would be an incredibly fulfilling experience. I plan to start by taking online lessons and practicing for at least thirty minutes every day. Learning the piano would not only give me a creative outlet but would also help improve my concentration and discipline, which are valuable skills in every aspect of life.'),

(gen_random_uuid(), 'Describe a Book That Influenced You', 'ielts', 'hard',
  'Describe a book that had a major impact on your thinking. You should say what the book was about, when you read it, what ideas from the book influenced you, and explain why this book was important to you. One book that profoundly changed my perspective was "Thinking, Fast and Slow" by Daniel Kahneman. I read it during my final year at university when I was studying decision-making processes. The book explores how our minds use two different systems for thinking: one that is fast and intuitive, and another that is slow and deliberate. This concept helped me understand why people, including myself, often make irrational decisions. It taught me to question my initial judgments and consider problems from multiple angles before reaching conclusions, which has been invaluable in both my personal and professional life.'),

(gen_random_uuid(), 'Describe a Change in Your Life', 'ielts', 'hard',
  'Describe a significant change that happened in your life recently. You should say what the change was, when it happened, how it affected your daily life, and explain whether you think it was a positive change. The most significant change in my life recently was transitioning from working in an office to working remotely from home. This shift happened about a year ago when my company adopted a flexible working policy. Initially, I struggled with the lack of structure and the difficulty of separating my work life from my personal life. However, over time, I developed a disciplined routine that actually increased my productivity. I now have more time for exercise, cooking healthy meals, and spending quality time with my family. While I occasionally miss the social interactions of an office environment, I firmly believe this change has had an overwhelmingly positive impact on my overall quality of life.');

-- IELTS Speaking Part 1 style (shorter, easier)
INSERT INTO "exercises" ("public_id", "title", "category", "difficulty", "text_content") VALUES

(gen_random_uuid(), 'Talk About Your Hometown', 'ielts', 'easy',
  'I come from a medium-sized city in the northern part of my country. It is known for its beautiful parks and historic architecture. The weather can be quite cold in winter, but summers are warm and pleasant. I enjoy living there because the community is very friendly and there are plenty of cultural events throughout the year.'),

(gen_random_uuid(), 'Describe Your Daily Routine', 'ielts', 'easy',
  'I usually wake up around seven in the morning. After having breakfast, I spend some time reading the news before starting my work. During lunch, I try to take a short walk to get some fresh air. In the evenings, I enjoy cooking dinner and spending time with my family. Before going to bed, I usually read a book for about thirty minutes.');

-- Diagnostic Test Exercises (comprehensive reading passages for baseline assessment)
INSERT INTO "exercises" ("public_id", "title", "category", "difficulty", "text_content") VALUES

(gen_random_uuid(), 'Diagnostic: General Proficiency', 'diagnostic', 'medium',
  'The ability to communicate effectively in English has become increasingly important in our interconnected world. Whether you are traveling abroad, conducting business with international partners, or simply consuming global media, strong English pronunciation helps ensure your message is understood clearly. Many learners focus heavily on grammar and vocabulary while overlooking the critical role that pronunciation plays in successful communication. Research has shown that listeners often judge a speaker''s competence and credibility based on their pronunciation quality, making it a vital skill to develop alongside other language abilities.'),

(gen_random_uuid(), 'Diagnostic: Advanced Sounds', 'diagnostic', 'hard',
  'Throughout history, technological breakthroughs have fundamentally transformed human civilization. The invention of the printing press in the fifteenth century revolutionized the dissemination of knowledge, making literature and scientific discoveries accessible to ordinary people for the first time. Similarly, the development of the telegraph and telephone dramatically shortened communication distances, connecting communities that were previously isolated from one another. Today, the rapid advancement of artificial intelligence and machine learning algorithms is reshaping industries, challenging our understanding of creativity, and raising important philosophical questions about the nature of consciousness and the boundaries between human and machine intelligence.');
