-- Seed exercises for all categories and difficulty levels
INSERT INTO "exercises" ("public_id", "title", "category", "difficulty", "text_content") VALUES

-- Conversation - easy
(gen_random_uuid(), 'Daily Greetings', 'conversation', 'easy',
  'Hello, how are you today? I am doing well, thank you for asking.'),

-- Conversation - medium
(gen_random_uuid(), 'Giving Advice', 'conversation', 'medium',
  'You should talk calmly and explain your feelings clearly to the other person.'),

-- Conversation - hard
(gen_random_uuid(), 'Conflict Resolution', 'conversation', 'hard',
  'When facing a disagreement, it is important to listen carefully and acknowledge the other person''s perspective before responding.'),

-- Storytelling - easy
(gen_random_uuid(), 'My Morning Routine', 'storytelling', 'easy',
  'Every morning I wake up early, brush my teeth, and have a healthy breakfast.'),

-- Storytelling - medium
(gen_random_uuid(), 'A Memorable Trip', 'storytelling', 'medium',
  'Last summer I traveled to a beautiful coastal town where the sunsets were breathtaking and the seafood was delicious.'),

-- Storytelling - hard
(gen_random_uuid(), 'Overcoming a Challenge', 'storytelling', 'hard',
  'Despite facing numerous setbacks throughout the project, our team persevered and ultimately delivered an outstanding result that exceeded all expectations.'),

-- Emotions - easy
(gen_random_uuid(), 'Expressing Happiness', 'emotions', 'easy',
  'I am very happy today because I received great news from my family.'),

-- Emotions - medium
(gen_random_uuid(), 'Describing Frustration', 'emotions', 'medium',
  'It can be quite frustrating when people do not listen carefully to what you are trying to explain.'),

-- Emotions - hard
(gen_random_uuid(), 'Complex Emotional Reflection', 'emotions', 'hard',
  'Although I initially felt overwhelmed by the unexpected changes, I gradually came to understand that uncertainty can be an opportunity for personal growth.'),

-- Interview - easy
(gen_random_uuid(), 'Introduce Yourself', 'interview', 'easy',
  'My name is Alex and I am a software engineer with three years of experience in web development.'),

-- Interview - medium
(gen_random_uuid(), 'Strengths and Weaknesses', 'interview', 'medium',
  'One of my greatest strengths is my ability to solve complex problems efficiently, while I am actively working on improving my public speaking skills.'),

-- Interview - hard
(gen_random_uuid(), 'Leadership Experience', 'interview', 'hard',
  'In my previous role I led a cross-functional team of twelve engineers through a critical product launch, coordinating between design, engineering, and stakeholder management simultaneously.'),

-- Daily practice - easy
(gen_random_uuid(), 'Ordering at a Cafe', 'daily', 'easy',
  'I would like a medium cappuccino and a blueberry muffin please.'),

-- Daily practice - medium
(gen_random_uuid(), 'Making a Phone Call', 'daily', 'medium',
  'Hello, I am calling to confirm my appointment scheduled for next Tuesday at two thirty in the afternoon.'),

-- Daily practice - hard
(gen_random_uuid(), 'Presenting a Report', 'daily', 'hard',
  'According to our quarterly analysis, revenue increased by twenty three percent compared to the same period last year, driven primarily by strong performance in our enterprise segment.');
