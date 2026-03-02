-- Migration 017: Overwrite generated exercises with highly impactful, meaningful content
-- This targets the exercises created in migration 015 & updated in 016 (identified by their "(Category)" suffix or generated phrasing).


WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Power of Authenticity (Conversation)', 
    text_content = 'Authentic conversations have the power to heal, inspire, and connect us on a deeper level.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Listening and Truth (Conversation)', 
    text_content = 'Every great relationship starts with the willingness to listen and the courage to speak your truth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Sharing Your Journey (Conversation)', 
    text_content = 'Sharing your personal journey can profoundly impact someone who is silently facing similar struggles.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Emotional Intelligence (Conversation)', 
    text_content = 'Emotional intelligence is just as important as intellect when navigating the complexities of life.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Thoughtful Responses (Conversation)', 
    text_content = 'A thoughtful response during a difficult moment can instantly defuse tension and build trust.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Shaping Reality (Conversation)', 
    text_content = 'We shape our reality through the stories we tell ourselves and the words we share with others.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Confident Voice (Conversation)', 
    text_content = 'Confidence in your voice comes from knowing that your unique perspective is inherently valuable.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Memorable Interactions (Conversation)', 
    text_content = 'The most memorable interactions are those where both people feel truly seen and understood.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Embracing Vulnerability (Conversation)', 
    text_content = 'Embrace vulnerability, for it is the hidden strength that makes human connection possible.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Genuine Dialogue (Conversation)', 
    text_content = 'When we engage in genuine dialogue, we open ourselves up to new perspectives that challenge our preconceptions. True communication is not about winning an argument, but about expanding our understanding of the human experience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Art of Storytelling (Conversation)', 
    text_content = 'Mastering the art of storytelling allows you to translate complex emotions into relatable experiences. A well-told narrative can capture the imagination, bridging the gap between strangers and fostering profound empathy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Tone and Pacing (Conversation)', 
    text_content = 'During an interview or formal discussion, your tone and pacing carry as much weight as your actual words. Taking a moment to breathe and center yourself before speaking projects quiet confidence and professional authority.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Everyday Interactions (Conversation)', 
    text_content = 'Our daily interactions may seem routine, but they form the invisible fabric of our social lives. Approaching everyday conversations with kindness and presence can transform a mundane exchange into a moment of genuine connection.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Expressing Emotions (Conversation)', 
    text_content = 'Expressing difficult emotions requires both courage and a precise vocabulary. When we accurately articulate how we feel, we give others the opportunity to support us effectively, turning personal struggle into shared strength.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Calm Under Pressure (Conversation)', 
    text_content = 'The ability to remain calm and articulate under pressure is a hallmark of emotional maturity. When conflicts arise, responding with measured, empathetic words can de-escalate the situation and pave the way for meaningful resolution.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Active Listening (Conversation)', 
    text_content = 'Active listening is a dynamic process that involves fully concentrating on what is being said rather than passively hearing the message. It is the fundamental building block of any successful personal or professional relationship.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Finding Your Voice (Conversation)', 
    text_content = 'Finding your authentic voice takes time and self-reflection. As you grow more comfortable with your own communication style, you will discover that people are naturally drawn to sincerity and unwavering honesty.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Compelling Narratives (Conversation)', 
    text_content = 'A compelling narrative doesn''t just relay facts; it weaves them together in a way that resonates emotionally with the audience. Cultivating this skill empowers you to advocate for yourself and inspire those around you.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Psychology of Breakthroughs (Conversation)', 
    text_content = 'The intricacies of human psychology dictate that our most profound personal breakthroughs often emerge from periods of intense vulnerability and emotional uncertainty, challenging us to reevaluate our core identity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'High-Stakes Interviews (Conversation)', 
    text_content = 'During high-stakes professional interviews, the candidate who successfully balances authentic self-representation with strategic corporate alignment consistently outperforms those who rely solely on rehearsed, formulaic responses.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Evolutionary Storytelling (Conversation)', 
    text_content = 'Storytelling transcends mere entertainment; it is an evolutionary survival mechanism that enables communities to encode complex moral lessons, preserve generational wisdom, and foster cohesive social architectures.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Interpersonal Subtleties (Conversation)', 
    text_content = 'Mastering the subtleties of interpersonal communication requires an acute awareness of non-verbal cues, microscopic shifts in tone, and the underlying contextual dynamics that govern every human interaction.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Dismantling Cognitive Dissonance (Conversation)', 
    text_content = 'When we actively dismantle the cognitive dissonance separating our private emotional state from our outward expressions, we cultivate a profound sense of inner peace and relational authenticity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Compounding Daily Routines (Conversation)', 
    text_content = 'The daily routines we establish may seem insignificant in isolation, but compounded over decades, they dictate the ultimate trajectory of our professional achievements and the depth of our personal fulfillment.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Emotional Vocabulary (Conversation)', 
    text_content = 'Articulating complex emotional states with precise vocabulary not only accelerates psychological healing but also provides our support networks with the clarity required to offer meaningful, targeted assistance.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Disagreements (Conversation)', 
    text_content = 'Navigating ideological disagreements gracefully demands that we temporarily suspend our deeply ingrained defensive reflexes in favor of genuine intellectual curiosity and empathetic active listening.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'conversation' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Modern Narrative Arc (Conversation)', 
    text_content = 'The modern narrative arc, whether deployed in corporate branding or personal memoirs, relies heavily on establishing a relatable protagonist who must overcome systemic friction to achieve self-actualization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Power of Authenticity (Storytelling)', 
    text_content = 'Authentic conversations have the power to heal, inspire, and connect us on a deeper level.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Listening and Truth (Storytelling)', 
    text_content = 'Every great relationship starts with the willingness to listen and the courage to speak your truth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Sharing Your Journey (Storytelling)', 
    text_content = 'Sharing your personal journey can profoundly impact someone who is silently facing similar struggles.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Emotional Intelligence (Storytelling)', 
    text_content = 'Emotional intelligence is just as important as intellect when navigating the complexities of life.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Thoughtful Responses (Storytelling)', 
    text_content = 'A thoughtful response during a difficult moment can instantly defuse tension and build trust.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Shaping Reality (Storytelling)', 
    text_content = 'We shape our reality through the stories we tell ourselves and the words we share with others.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Confident Voice (Storytelling)', 
    text_content = 'Confidence in your voice comes from knowing that your unique perspective is inherently valuable.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Memorable Interactions (Storytelling)', 
    text_content = 'The most memorable interactions are those where both people feel truly seen and understood.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Embracing Vulnerability (Storytelling)', 
    text_content = 'Embrace vulnerability, for it is the hidden strength that makes human connection possible.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Genuine Dialogue (Storytelling)', 
    text_content = 'When we engage in genuine dialogue, we open ourselves up to new perspectives that challenge our preconceptions. True communication is not about winning an argument, but about expanding our understanding of the human experience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Art of Storytelling (Storytelling)', 
    text_content = 'Mastering the art of storytelling allows you to translate complex emotions into relatable experiences. A well-told narrative can capture the imagination, bridging the gap between strangers and fostering profound empathy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Tone and Pacing (Storytelling)', 
    text_content = 'During an interview or formal discussion, your tone and pacing carry as much weight as your actual words. Taking a moment to breathe and center yourself before speaking projects quiet confidence and professional authority.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Everyday Interactions (Storytelling)', 
    text_content = 'Our daily interactions may seem routine, but they form the invisible fabric of our social lives. Approaching everyday conversations with kindness and presence can transform a mundane exchange into a moment of genuine connection.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Expressing Emotions (Storytelling)', 
    text_content = 'Expressing difficult emotions requires both courage and a precise vocabulary. When we accurately articulate how we feel, we give others the opportunity to support us effectively, turning personal struggle into shared strength.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Calm Under Pressure (Storytelling)', 
    text_content = 'The ability to remain calm and articulate under pressure is a hallmark of emotional maturity. When conflicts arise, responding with measured, empathetic words can de-escalate the situation and pave the way for meaningful resolution.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Active Listening (Storytelling)', 
    text_content = 'Active listening is a dynamic process that involves fully concentrating on what is being said rather than passively hearing the message. It is the fundamental building block of any successful personal or professional relationship.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Finding Your Voice (Storytelling)', 
    text_content = 'Finding your authentic voice takes time and self-reflection. As you grow more comfortable with your own communication style, you will discover that people are naturally drawn to sincerity and unwavering honesty.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Compelling Narratives (Storytelling)', 
    text_content = 'A compelling narrative doesn''t just relay facts; it weaves them together in a way that resonates emotionally with the audience. Cultivating this skill empowers you to advocate for yourself and inspire those around you.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Psychology of Breakthroughs (Storytelling)', 
    text_content = 'The intricacies of human psychology dictate that our most profound personal breakthroughs often emerge from periods of intense vulnerability and emotional uncertainty, challenging us to reevaluate our core identity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'High-Stakes Interviews (Storytelling)', 
    text_content = 'During high-stakes professional interviews, the candidate who successfully balances authentic self-representation with strategic corporate alignment consistently outperforms those who rely solely on rehearsed, formulaic responses.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Evolutionary Storytelling (Storytelling)', 
    text_content = 'Storytelling transcends mere entertainment; it is an evolutionary survival mechanism that enables communities to encode complex moral lessons, preserve generational wisdom, and foster cohesive social architectures.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Interpersonal Subtleties (Storytelling)', 
    text_content = 'Mastering the subtleties of interpersonal communication requires an acute awareness of non-verbal cues, microscopic shifts in tone, and the underlying contextual dynamics that govern every human interaction.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Dismantling Cognitive Dissonance (Storytelling)', 
    text_content = 'When we actively dismantle the cognitive dissonance separating our private emotional state from our outward expressions, we cultivate a profound sense of inner peace and relational authenticity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Compounding Daily Routines (Storytelling)', 
    text_content = 'The daily routines we establish may seem insignificant in isolation, but compounded over decades, they dictate the ultimate trajectory of our professional achievements and the depth of our personal fulfillment.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Emotional Vocabulary (Storytelling)', 
    text_content = 'Articulating complex emotional states with precise vocabulary not only accelerates psychological healing but also provides our support networks with the clarity required to offer meaningful, targeted assistance.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Disagreements (Storytelling)', 
    text_content = 'Navigating ideological disagreements gracefully demands that we temporarily suspend our deeply ingrained defensive reflexes in favor of genuine intellectual curiosity and empathetic active listening.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'storytelling' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Modern Narrative Arc (Storytelling)', 
    text_content = 'The modern narrative arc, whether deployed in corporate branding or personal memoirs, relies heavily on establishing a relatable protagonist who must overcome systemic friction to achieve self-actualization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Power of Authenticity (Emotions)', 
    text_content = 'Authentic conversations have the power to heal, inspire, and connect us on a deeper level.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Listening and Truth (Emotions)', 
    text_content = 'Every great relationship starts with the willingness to listen and the courage to speak your truth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Sharing Your Journey (Emotions)', 
    text_content = 'Sharing your personal journey can profoundly impact someone who is silently facing similar struggles.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Emotional Intelligence (Emotions)', 
    text_content = 'Emotional intelligence is just as important as intellect when navigating the complexities of life.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Thoughtful Responses (Emotions)', 
    text_content = 'A thoughtful response during a difficult moment can instantly defuse tension and build trust.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Shaping Reality (Emotions)', 
    text_content = 'We shape our reality through the stories we tell ourselves and the words we share with others.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Confident Voice (Emotions)', 
    text_content = 'Confidence in your voice comes from knowing that your unique perspective is inherently valuable.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Memorable Interactions (Emotions)', 
    text_content = 'The most memorable interactions are those where both people feel truly seen and understood.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Embracing Vulnerability (Emotions)', 
    text_content = 'Embrace vulnerability, for it is the hidden strength that makes human connection possible.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Genuine Dialogue (Emotions)', 
    text_content = 'When we engage in genuine dialogue, we open ourselves up to new perspectives that challenge our preconceptions. True communication is not about winning an argument, but about expanding our understanding of the human experience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Art of Storytelling (Emotions)', 
    text_content = 'Mastering the art of storytelling allows you to translate complex emotions into relatable experiences. A well-told narrative can capture the imagination, bridging the gap between strangers and fostering profound empathy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Tone and Pacing (Emotions)', 
    text_content = 'During an interview or formal discussion, your tone and pacing carry as much weight as your actual words. Taking a moment to breathe and center yourself before speaking projects quiet confidence and professional authority.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Everyday Interactions (Emotions)', 
    text_content = 'Our daily interactions may seem routine, but they form the invisible fabric of our social lives. Approaching everyday conversations with kindness and presence can transform a mundane exchange into a moment of genuine connection.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Expressing Emotions (Emotions)', 
    text_content = 'Expressing difficult emotions requires both courage and a precise vocabulary. When we accurately articulate how we feel, we give others the opportunity to support us effectively, turning personal struggle into shared strength.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Calm Under Pressure (Emotions)', 
    text_content = 'The ability to remain calm and articulate under pressure is a hallmark of emotional maturity. When conflicts arise, responding with measured, empathetic words can de-escalate the situation and pave the way for meaningful resolution.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Active Listening (Emotions)', 
    text_content = 'Active listening is a dynamic process that involves fully concentrating on what is being said rather than passively hearing the message. It is the fundamental building block of any successful personal or professional relationship.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Finding Your Voice (Emotions)', 
    text_content = 'Finding your authentic voice takes time and self-reflection. As you grow more comfortable with your own communication style, you will discover that people are naturally drawn to sincerity and unwavering honesty.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Compelling Narratives (Emotions)', 
    text_content = 'A compelling narrative doesn''t just relay facts; it weaves them together in a way that resonates emotionally with the audience. Cultivating this skill empowers you to advocate for yourself and inspire those around you.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Psychology of Breakthroughs (Emotions)', 
    text_content = 'The intricacies of human psychology dictate that our most profound personal breakthroughs often emerge from periods of intense vulnerability and emotional uncertainty, challenging us to reevaluate our core identity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'High-Stakes Interviews (Emotions)', 
    text_content = 'During high-stakes professional interviews, the candidate who successfully balances authentic self-representation with strategic corporate alignment consistently outperforms those who rely solely on rehearsed, formulaic responses.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Evolutionary Storytelling (Emotions)', 
    text_content = 'Storytelling transcends mere entertainment; it is an evolutionary survival mechanism that enables communities to encode complex moral lessons, preserve generational wisdom, and foster cohesive social architectures.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Interpersonal Subtleties (Emotions)', 
    text_content = 'Mastering the subtleties of interpersonal communication requires an acute awareness of non-verbal cues, microscopic shifts in tone, and the underlying contextual dynamics that govern every human interaction.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Dismantling Cognitive Dissonance (Emotions)', 
    text_content = 'When we actively dismantle the cognitive dissonance separating our private emotional state from our outward expressions, we cultivate a profound sense of inner peace and relational authenticity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Compounding Daily Routines (Emotions)', 
    text_content = 'The daily routines we establish may seem insignificant in isolation, but compounded over decades, they dictate the ultimate trajectory of our professional achievements and the depth of our personal fulfillment.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Emotional Vocabulary (Emotions)', 
    text_content = 'Articulating complex emotional states with precise vocabulary not only accelerates psychological healing but also provides our support networks with the clarity required to offer meaningful, targeted assistance.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Disagreements (Emotions)', 
    text_content = 'Navigating ideological disagreements gracefully demands that we temporarily suspend our deeply ingrained defensive reflexes in favor of genuine intellectual curiosity and empathetic active listening.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'emotions' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Modern Narrative Arc (Emotions)', 
    text_content = 'The modern narrative arc, whether deployed in corporate branding or personal memoirs, relies heavily on establishing a relatable protagonist who must overcome systemic friction to achieve self-actualization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Power of Authenticity (Daily)', 
    text_content = 'Authentic conversations have the power to heal, inspire, and connect us on a deeper level.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Listening and Truth (Daily)', 
    text_content = 'Every great relationship starts with the willingness to listen and the courage to speak your truth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Sharing Your Journey (Daily)', 
    text_content = 'Sharing your personal journey can profoundly impact someone who is silently facing similar struggles.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Emotional Intelligence (Daily)', 
    text_content = 'Emotional intelligence is just as important as intellect when navigating the complexities of life.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Thoughtful Responses (Daily)', 
    text_content = 'A thoughtful response during a difficult moment can instantly defuse tension and build trust.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Shaping Reality (Daily)', 
    text_content = 'We shape our reality through the stories we tell ourselves and the words we share with others.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Confident Voice (Daily)', 
    text_content = 'Confidence in your voice comes from knowing that your unique perspective is inherently valuable.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Memorable Interactions (Daily)', 
    text_content = 'The most memorable interactions are those where both people feel truly seen and understood.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Embracing Vulnerability (Daily)', 
    text_content = 'Embrace vulnerability, for it is the hidden strength that makes human connection possible.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Genuine Dialogue (Daily)', 
    text_content = 'When we engage in genuine dialogue, we open ourselves up to new perspectives that challenge our preconceptions. True communication is not about winning an argument, but about expanding our understanding of the human experience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Art of Storytelling (Daily)', 
    text_content = 'Mastering the art of storytelling allows you to translate complex emotions into relatable experiences. A well-told narrative can capture the imagination, bridging the gap between strangers and fostering profound empathy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Tone and Pacing (Daily)', 
    text_content = 'During an interview or formal discussion, your tone and pacing carry as much weight as your actual words. Taking a moment to breathe and center yourself before speaking projects quiet confidence and professional authority.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Everyday Interactions (Daily)', 
    text_content = 'Our daily interactions may seem routine, but they form the invisible fabric of our social lives. Approaching everyday conversations with kindness and presence can transform a mundane exchange into a moment of genuine connection.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Expressing Emotions (Daily)', 
    text_content = 'Expressing difficult emotions requires both courage and a precise vocabulary. When we accurately articulate how we feel, we give others the opportunity to support us effectively, turning personal struggle into shared strength.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Calm Under Pressure (Daily)', 
    text_content = 'The ability to remain calm and articulate under pressure is a hallmark of emotional maturity. When conflicts arise, responding with measured, empathetic words can de-escalate the situation and pave the way for meaningful resolution.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Active Listening (Daily)', 
    text_content = 'Active listening is a dynamic process that involves fully concentrating on what is being said rather than passively hearing the message. It is the fundamental building block of any successful personal or professional relationship.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Finding Your Voice (Daily)', 
    text_content = 'Finding your authentic voice takes time and self-reflection. As you grow more comfortable with your own communication style, you will discover that people are naturally drawn to sincerity and unwavering honesty.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Compelling Narratives (Daily)', 
    text_content = 'A compelling narrative doesn''t just relay facts; it weaves them together in a way that resonates emotionally with the audience. Cultivating this skill empowers you to advocate for yourself and inspire those around you.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Psychology of Breakthroughs (Daily)', 
    text_content = 'The intricacies of human psychology dictate that our most profound personal breakthroughs often emerge from periods of intense vulnerability and emotional uncertainty, challenging us to reevaluate our core identity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'High-Stakes Interviews (Daily)', 
    text_content = 'During high-stakes professional interviews, the candidate who successfully balances authentic self-representation with strategic corporate alignment consistently outperforms those who rely solely on rehearsed, formulaic responses.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Evolutionary Storytelling (Daily)', 
    text_content = 'Storytelling transcends mere entertainment; it is an evolutionary survival mechanism that enables communities to encode complex moral lessons, preserve generational wisdom, and foster cohesive social architectures.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Interpersonal Subtleties (Daily)', 
    text_content = 'Mastering the subtleties of interpersonal communication requires an acute awareness of non-verbal cues, microscopic shifts in tone, and the underlying contextual dynamics that govern every human interaction.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Dismantling Cognitive Dissonance (Daily)', 
    text_content = 'When we actively dismantle the cognitive dissonance separating our private emotional state from our outward expressions, we cultivate a profound sense of inner peace and relational authenticity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Compounding Daily Routines (Daily)', 
    text_content = 'The daily routines we establish may seem insignificant in isolation, but compounded over decades, they dictate the ultimate trajectory of our professional achievements and the depth of our personal fulfillment.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Emotional Vocabulary (Daily)', 
    text_content = 'Articulating complex emotional states with precise vocabulary not only accelerates psychological healing but also provides our support networks with the clarity required to offer meaningful, targeted assistance.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Disagreements (Daily)', 
    text_content = 'Navigating ideological disagreements gracefully demands that we temporarily suspend our deeply ingrained defensive reflexes in favor of genuine intellectual curiosity and empathetic active listening.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'daily' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Modern Narrative Arc (Daily)', 
    text_content = 'The modern narrative arc, whether deployed in corporate branding or personal memoirs, relies heavily on establishing a relatable protagonist who must overcome systemic friction to achieve self-actualization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Power of Authenticity (Interview)', 
    text_content = 'Authentic conversations have the power to heal, inspire, and connect us on a deeper level.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Listening and Truth (Interview)', 
    text_content = 'Every great relationship starts with the willingness to listen and the courage to speak your truth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Sharing Your Journey (Interview)', 
    text_content = 'Sharing your personal journey can profoundly impact someone who is silently facing similar struggles.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Emotional Intelligence (Interview)', 
    text_content = 'Emotional intelligence is just as important as intellect when navigating the complexities of life.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Thoughtful Responses (Interview)', 
    text_content = 'A thoughtful response during a difficult moment can instantly defuse tension and build trust.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Shaping Reality (Interview)', 
    text_content = 'We shape our reality through the stories we tell ourselves and the words we share with others.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Confident Voice (Interview)', 
    text_content = 'Confidence in your voice comes from knowing that your unique perspective is inherently valuable.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Memorable Interactions (Interview)', 
    text_content = 'The most memorable interactions are those where both people feel truly seen and understood.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Embracing Vulnerability (Interview)', 
    text_content = 'Embrace vulnerability, for it is the hidden strength that makes human connection possible.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Genuine Dialogue (Interview)', 
    text_content = 'When we engage in genuine dialogue, we open ourselves up to new perspectives that challenge our preconceptions. True communication is not about winning an argument, but about expanding our understanding of the human experience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Art of Storytelling (Interview)', 
    text_content = 'Mastering the art of storytelling allows you to translate complex emotions into relatable experiences. A well-told narrative can capture the imagination, bridging the gap between strangers and fostering profound empathy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Tone and Pacing (Interview)', 
    text_content = 'During an interview or formal discussion, your tone and pacing carry as much weight as your actual words. Taking a moment to breathe and center yourself before speaking projects quiet confidence and professional authority.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Everyday Interactions (Interview)', 
    text_content = 'Our daily interactions may seem routine, but they form the invisible fabric of our social lives. Approaching everyday conversations with kindness and presence can transform a mundane exchange into a moment of genuine connection.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Expressing Emotions (Interview)', 
    text_content = 'Expressing difficult emotions requires both courage and a precise vocabulary. When we accurately articulate how we feel, we give others the opportunity to support us effectively, turning personal struggle into shared strength.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Calm Under Pressure (Interview)', 
    text_content = 'The ability to remain calm and articulate under pressure is a hallmark of emotional maturity. When conflicts arise, responding with measured, empathetic words can de-escalate the situation and pave the way for meaningful resolution.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Active Listening (Interview)', 
    text_content = 'Active listening is a dynamic process that involves fully concentrating on what is being said rather than passively hearing the message. It is the fundamental building block of any successful personal or professional relationship.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Finding Your Voice (Interview)', 
    text_content = 'Finding your authentic voice takes time and self-reflection. As you grow more comfortable with your own communication style, you will discover that people are naturally drawn to sincerity and unwavering honesty.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Compelling Narratives (Interview)', 
    text_content = 'A compelling narrative doesn''t just relay facts; it weaves them together in a way that resonates emotionally with the audience. Cultivating this skill empowers you to advocate for yourself and inspire those around you.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Psychology of Breakthroughs (Interview)', 
    text_content = 'The intricacies of human psychology dictate that our most profound personal breakthroughs often emerge from periods of intense vulnerability and emotional uncertainty, challenging us to reevaluate our core identity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'High-Stakes Interviews (Interview)', 
    text_content = 'During high-stakes professional interviews, the candidate who successfully balances authentic self-representation with strategic corporate alignment consistently outperforms those who rely solely on rehearsed, formulaic responses.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Evolutionary Storytelling (Interview)', 
    text_content = 'Storytelling transcends mere entertainment; it is an evolutionary survival mechanism that enables communities to encode complex moral lessons, preserve generational wisdom, and foster cohesive social architectures.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Interpersonal Subtleties (Interview)', 
    text_content = 'Mastering the subtleties of interpersonal communication requires an acute awareness of non-verbal cues, microscopic shifts in tone, and the underlying contextual dynamics that govern every human interaction.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Dismantling Cognitive Dissonance (Interview)', 
    text_content = 'When we actively dismantle the cognitive dissonance separating our private emotional state from our outward expressions, we cultivate a profound sense of inner peace and relational authenticity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Compounding Daily Routines (Interview)', 
    text_content = 'The daily routines we establish may seem insignificant in isolation, but compounded over decades, they dictate the ultimate trajectory of our professional achievements and the depth of our personal fulfillment.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Emotional Vocabulary (Interview)', 
    text_content = 'Articulating complex emotional states with precise vocabulary not only accelerates psychological healing but also provides our support networks with the clarity required to offer meaningful, targeted assistance.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Disagreements (Interview)', 
    text_content = 'Navigating ideological disagreements gracefully demands that we temporarily suspend our deeply ingrained defensive reflexes in favor of genuine intellectual curiosity and empathetic active listening.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'interview' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Modern Narrative Arc (Interview)', 
    text_content = 'The modern narrative arc, whether deployed in corporate branding or personal memoirs, relies heavily on establishing a relatable protagonist who must overcome systemic friction to achieve self-actualization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Business)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Business)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Business)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Business)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Business)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Business)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Business)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Business)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Business)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Business)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Business)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Business)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Business)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Business)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Business)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Business)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Business)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Business)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Business)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Business)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Business)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Business)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Business)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Business)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Business)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Business)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'business' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Business)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (News)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (News)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (News)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (News)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (News)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (News)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (News)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (News)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (News)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (News)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (News)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (News)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (News)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (News)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (News)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (News)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (News)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (News)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (News)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (News)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (News)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (News)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (News)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (News)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (News)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (News)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'news' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (News)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Academic)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Academic)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Academic)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Academic)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Academic)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Academic)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Academic)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Academic)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Academic)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Academic)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Academic)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Academic)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Academic)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Academic)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Academic)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Academic)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Academic)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Academic)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Academic)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Academic)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Academic)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Academic)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Academic)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Academic)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Academic)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Academic)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'academic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Academic)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Politics)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Politics)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Politics)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Politics)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Politics)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Politics)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Politics)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Politics)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Politics)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Politics)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Politics)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Politics)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Politics)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Politics)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Politics)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Politics)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Politics)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Politics)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Politics)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Politics)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Politics)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Politics)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Politics)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Politics)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Politics)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Politics)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'politics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Politics)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Geopolitics)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Geopolitics)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Geopolitics)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Geopolitics)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Geopolitics)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Geopolitics)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Geopolitics)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Geopolitics)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Geopolitics)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Geopolitics)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Geopolitics)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Geopolitics)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Geopolitics)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Geopolitics)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Geopolitics)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Geopolitics)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Geopolitics)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Geopolitics)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Geopolitics)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Geopolitics)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Geopolitics)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Geopolitics)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Geopolitics)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Geopolitics)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Geopolitics)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Geopolitics)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'geopolitics' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Geopolitics)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Technology)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Technology)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Technology)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Technology)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Technology)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Technology)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Technology)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Technology)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Technology)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Technology)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Technology)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Technology)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Technology)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Technology)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Technology)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Technology)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Technology)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Technology)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Technology)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Technology)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Technology)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Technology)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Technology)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Technology)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Technology)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Technology)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'technology' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Technology)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Diplomatic)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Diplomatic)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Diplomatic)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Diplomatic)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Diplomatic)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Diplomatic)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Diplomatic)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Diplomatic)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Diplomatic)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Diplomatic)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Diplomatic)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Diplomatic)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Diplomatic)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Diplomatic)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Diplomatic)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Diplomatic)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Diplomatic)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Diplomatic)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Diplomatic)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Diplomatic)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Diplomatic)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Diplomatic)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Diplomatic)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Diplomatic)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Diplomatic)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Diplomatic)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diplomatic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Diplomatic)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Collaborative Innovation (Formal)', 
    text_content = 'Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Economic Strategy (Formal)', 
    text_content = 'A strong economic strategy must balance immediate profitability with long-term sustainable growth.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Effective Diplomacy (Formal)', 
    text_content = 'Effective diplomacy relies on mutual respect, strategic compromise, and clear communication.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Digital Advancements (Formal)', 
    text_content = 'Advancements in digital technology continue to reshape the global landscape at an unprecedented pace.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Integrity (Formal)', 
    text_content = 'Academic integrity requires rigorous research, objective analysis, and transparent reporting.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Crisis Leadership (Formal)', 
    text_content = 'Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Interconnected Markets (Formal)', 
    text_content = 'Global markets are highly interconnected, meaning local policies often have widespread international impact.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Professional Proposals (Formal)', 
    text_content = 'A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Civic Engagement (Formal)', 
    text_content = 'Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'AI Integration (Formal)', 
    text_content = 'The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Navigating Geopolitics (Formal)', 
    text_content = 'Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Peer Review Process (Formal)', 
    text_content = 'In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Responsible Journalism (Formal)', 
    text_content = 'Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate ESG (Formal)', 
    text_content = 'Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Formal Negotiation (Formal)', 
    text_content = 'The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Technological Breakthroughs (Formal)', 
    text_content = 'Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Public Policy Decisions (Formal)', 
    text_content = 'Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Supply Chain Resilience (Formal)', 
    text_content = 'In today''s globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Decentralized Finance (Formal)', 
    text_content = 'The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Geopolitical Supply (Formal)', 
    text_content = 'Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Academic Methodologies (Formal)', 
    text_content = 'Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Sustainability (Formal)', 
    text_content = 'Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Diplomatic Resolution (Formal)', 
    text_content = 'The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Ethical AI Constraints (Formal)', 
    text_content = 'As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Political Governance (Formal)', 
    text_content = 'Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Journalistic Integrity (Formal)', 
    text_content = 'The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'formal' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Corporate Communications (Formal)', 
    text_content = 'Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Travel)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Travel)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Travel)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Travel)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Travel)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Travel)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Travel)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Travel)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Travel)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Travel)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Travel)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Travel)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Travel)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Travel)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Travel)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Travel)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Travel)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Travel)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Travel)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Travel)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Travel)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Travel)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Travel)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Travel)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Travel)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Travel)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'travel' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Travel)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Tongue twisters)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Tongue twisters)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Tongue twisters)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Tongue twisters)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Tongue twisters)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Tongue twisters)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Tongue twisters)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Tongue twisters)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Tongue twisters)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Tongue twisters)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Tongue twisters)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Tongue twisters)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Tongue twisters)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Tongue twisters)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Tongue twisters)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Tongue twisters)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Tongue twisters)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Tongue twisters)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Tongue twisters)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Tongue twisters)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Tongue twisters)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Tongue twisters)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Tongue twisters)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Tongue twisters)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Tongue twisters)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Tongue twisters)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'tongue_twisters' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Tongue twisters)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Classic literature)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Classic literature)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Classic literature)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Classic literature)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Classic literature)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Classic literature)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Classic literature)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Classic literature)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Classic literature)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Classic literature)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Classic literature)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Classic literature)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Classic literature)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Classic literature)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Classic literature)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Classic literature)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Classic literature)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Classic literature)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Classic literature)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Classic literature)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Classic literature)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Classic literature)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Classic literature)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Classic literature)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Classic literature)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Classic literature)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'classic_literature' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Classic literature)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Speech)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Speech)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Speech)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Speech)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Speech)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Speech)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Speech)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Speech)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Speech)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Speech)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Speech)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Speech)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Speech)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Speech)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Speech)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Speech)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Speech)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Speech)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Speech)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Speech)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Speech)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Speech)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Speech)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Speech)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Speech)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Speech)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'speech' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Speech)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Sports)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Sports)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Sports)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Sports)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Sports)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Sports)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Sports)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Sports)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Sports)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Sports)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Sports)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Sports)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Sports)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Sports)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Sports)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Sports)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Sports)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Sports)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Sports)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Sports)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Sports)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Sports)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Sports)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Sports)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Sports)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Sports)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'sports' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Sports)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Diagnostic)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Diagnostic)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Diagnostic)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Diagnostic)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Diagnostic)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Diagnostic)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Diagnostic)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Diagnostic)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Diagnostic)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Diagnostic)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Diagnostic)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Diagnostic)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Diagnostic)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Diagnostic)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Diagnostic)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Diagnostic)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Diagnostic)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Diagnostic)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Diagnostic)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Diagnostic)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Diagnostic)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Diagnostic)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Diagnostic)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Diagnostic)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Diagnostic)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Diagnostic)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'diagnostic' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Diagnostic)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Exploring Cultures (Ielts)', 
    text_content = 'Exploring new cultures challenges our assumptions and broadens our understanding of the world.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Success (Ielts)', 
    text_content = 'Athletic success is driven by unwavering discipline, physical endurance, and mental toughness.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Timeless Literature (Ielts)', 
    text_content = 'Classic literature offers a timeless window into the universal struggles and triumphs of humanity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Powerful Public Speech (Ielts)', 
    text_content = 'A powerful public speech connects with the audience through shared values and a compelling vision.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Precise Articulation (Ielts)', 
    text_content = 'Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Transformative Travel (Ielts)', 
    text_content = 'Traveling off the beaten path often leads to the most memorable and transformative experiences.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Consistent Practice (Ielts)', 
    text_content = 'Consistent daily practice is the only reliable method for achieving fluency in a new language.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Great Literature (Ielts)', 
    text_content = 'Great literature challenges the reader to look beyond the surface and question their own reality.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'easy' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Sports Teamwork (Ielts)', 
    text_content = 'Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Immersive Travel (Ielts)', 
    text_content = 'The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Vocal Mastery (Ielts)', 
    text_content = 'Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Endurance (Ielts)', 
    text_content = 'The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Keynote Delivery (Ielts)', 
    text_content = 'When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Studying Classics (Ielts)', 
    text_content = 'Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Diagnostic Assessment (Ielts)', 
    text_content = 'Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Exam Proficiency (Ielts)', 
    text_content = 'Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Well-Crafted Sentences (Ielts)', 
    text_content = 'The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'medium' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Ielts)', 
    text_content = 'Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 0 LIMIT 1
)
UPDATE exercises
SET title = 'Cultural Immersion (Ielts)', 
    text_content = 'Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 1 LIMIT 1
)
UPDATE exercises
SET title = 'Physiological Articulation (Ielts)', 
    text_content = 'The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 2 LIMIT 1
)
UPDATE exercises
SET title = 'Classical Archetypes (Ielts)', 
    text_content = 'Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 3 LIMIT 1
)
UPDATE exercises
SET title = 'Oratorical Performance (Ielts)', 
    text_content = 'Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience''s undivided attention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 4 LIMIT 1
)
UPDATE exercises
SET title = 'Athletic Optimization (Ielts)', 
    text_content = 'Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 5 LIMIT 1
)
UPDATE exercises
SET title = 'Linguistic Diagnostics (Ielts)', 
    text_content = 'Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 6 LIMIT 1
)
UPDATE exercises
SET title = 'Language Proficiency (Ielts)', 
    text_content = 'To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 7 LIMIT 1
)
UPDATE exercises
SET title = 'Neurological Speech (Ielts)', 
    text_content = 'The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency.'
WHERE id = (SELECT id FROM target);

WITH target AS (
  SELECT id FROM exercises 
  WHERE category = 'ielts' 
    AND difficulty = 'hard' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET 8 LIMIT 1
)
UPDATE exercises
SET title = 'Societal Transformations (Ielts)', 
    text_content = 'Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action.'
WHERE id = (SELECT id FROM target);
