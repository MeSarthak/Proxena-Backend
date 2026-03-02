-- Migration 016: Update exercise titles to be more descriptive based on content
-- Replaces generic "Category Practice EASY #1" with semantic names based on the base text

UPDATE exercises 
SET title = 'Walking in the Park (Conversation)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Walking in the Park (Storytelling)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Walking in the Park (Emotions)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Walking in the Park (Interview)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Walking in the Park (Daily)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Walking in the Park (Business)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Walking in the Park (News)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Walking in the Park (Travel)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Walking in the Park (Academic)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Walking in the Park (Tongue twisters)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Walking in the Park (Classic literature)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Walking in the Park (Politics)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Walking in the Park (Geopolitics)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Walking in the Park (Speech)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Walking in the Park (Diplomatic)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Walking in the Park (Formal)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Walking in the Park (Sports)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Walking in the Park (Technology)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Walking in the Park (Diagnostic)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Walking in the Park (Ielts)' 
WHERE text_content LIKE 'I like to walk in the park.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'The Blue Sky (Conversation)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'The Blue Sky (Storytelling)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'The Blue Sky (Emotions)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'The Blue Sky (Interview)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'The Blue Sky (Daily)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'The Blue Sky (Business)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'The Blue Sky (News)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'The Blue Sky (Travel)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'The Blue Sky (Academic)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'The Blue Sky (Tongue twisters)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'The Blue Sky (Classic literature)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'The Blue Sky (Politics)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'The Blue Sky (Geopolitics)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'The Blue Sky (Speech)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'The Blue Sky (Diplomatic)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'The Blue Sky (Formal)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'The Blue Sky (Sports)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'The Blue Sky (Technology)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'The Blue Sky (Diagnostic)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'The Blue Sky (Ielts)' 
WHERE text_content LIKE 'The sky is very blue today.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Getting Coffee (Conversation)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Getting Coffee (Storytelling)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Getting Coffee (Emotions)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Getting Coffee (Interview)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Getting Coffee (Daily)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Getting Coffee (Business)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Getting Coffee (News)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Getting Coffee (Travel)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Getting Coffee (Academic)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Getting Coffee (Tongue twisters)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Getting Coffee (Classic literature)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Getting Coffee (Politics)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Getting Coffee (Geopolitics)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Getting Coffee (Speech)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Getting Coffee (Diplomatic)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Getting Coffee (Formal)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Getting Coffee (Sports)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Getting Coffee (Technology)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Getting Coffee (Diagnostic)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Getting Coffee (Ielts)' 
WHERE text_content LIKE 'Do you want to get some coffee?%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Playing Fetch (Conversation)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Playing Fetch (Storytelling)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Playing Fetch (Emotions)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Playing Fetch (Interview)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Playing Fetch (Daily)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Playing Fetch (Business)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Playing Fetch (News)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Playing Fetch (Travel)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Playing Fetch (Academic)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Playing Fetch (Tongue twisters)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Playing Fetch (Classic literature)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Playing Fetch (Politics)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Playing Fetch (Geopolitics)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Playing Fetch (Speech)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Playing Fetch (Diplomatic)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Playing Fetch (Formal)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Playing Fetch (Sports)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Playing Fetch (Technology)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Playing Fetch (Diagnostic)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Playing Fetch (Ielts)' 
WHERE text_content LIKE 'My dog loves to play fetch.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Reading Every Night (Conversation)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Reading Every Night (Storytelling)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Reading Every Night (Emotions)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Reading Every Night (Interview)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Reading Every Night (Daily)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Reading Every Night (Business)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Reading Every Night (News)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Reading Every Night (Travel)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Reading Every Night (Academic)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Reading Every Night (Tongue twisters)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Reading Every Night (Classic literature)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Reading Every Night (Politics)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Reading Every Night (Geopolitics)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Reading Every Night (Speech)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Reading Every Night (Diplomatic)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Reading Every Night (Formal)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Reading Every Night (Sports)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Reading Every Night (Technology)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Reading Every Night (Diagnostic)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Reading Every Night (Ielts)' 
WHERE text_content LIKE 'She reads a book every night.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Going to the Store (Conversation)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Going to the Store (Storytelling)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Going to the Store (Emotions)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Going to the Store (Interview)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Going to the Store (Daily)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Going to the Store (Business)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Going to the Store (News)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Going to the Store (Travel)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Going to the Store (Academic)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Going to the Store (Tongue twisters)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Going to the Store (Classic literature)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Going to the Store (Politics)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Going to the Store (Geopolitics)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Going to the Store (Speech)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Going to the Store (Diplomatic)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Going to the Store (Formal)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Going to the Store (Sports)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Going to the Store (Technology)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Going to the Store (Diagnostic)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Going to the Store (Ielts)' 
WHERE text_content LIKE 'We are going to the store.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Playing the Guitar (Conversation)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Playing the Guitar (Storytelling)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Playing the Guitar (Emotions)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Playing the Guitar (Interview)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Playing the Guitar (Daily)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Playing the Guitar (Business)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Playing the Guitar (News)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Playing the Guitar (Travel)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Playing the Guitar (Academic)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Playing the Guitar (Tongue twisters)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Playing the Guitar (Classic literature)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Playing the Guitar (Politics)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Playing the Guitar (Geopolitics)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Playing the Guitar (Speech)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Playing the Guitar (Diplomatic)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Playing the Guitar (Formal)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Playing the Guitar (Sports)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Playing the Guitar (Technology)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Playing the Guitar (Diagnostic)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Playing the Guitar (Ielts)' 
WHERE text_content LIKE 'He plays guitar very well.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Cold Food (Conversation)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Cold Food (Storytelling)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Cold Food (Emotions)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Cold Food (Interview)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Cold Food (Daily)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Cold Food (Business)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Cold Food (News)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Cold Food (Travel)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Cold Food (Academic)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Cold Food (Tongue twisters)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Cold Food (Classic literature)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Cold Food (Politics)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Cold Food (Geopolitics)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Cold Food (Speech)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Cold Food (Diplomatic)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Cold Food (Formal)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Cold Food (Sports)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Cold Food (Technology)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Cold Food (Diagnostic)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Cold Food (Ielts)' 
WHERE text_content LIKE 'The food is getting cold.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Asking for Help (Conversation)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Asking for Help (Storytelling)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Asking for Help (Emotions)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Asking for Help (Interview)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Asking for Help (Daily)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Asking for Help (Business)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Asking for Help (News)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Asking for Help (Travel)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Asking for Help (Academic)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Asking for Help (Tongue twisters)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Asking for Help (Classic literature)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Asking for Help (Politics)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Asking for Help (Geopolitics)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Asking for Help (Speech)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Asking for Help (Diplomatic)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Asking for Help (Formal)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Asking for Help (Sports)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Asking for Help (Technology)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Asking for Help (Diagnostic)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Asking for Help (Ielts)' 
WHERE text_content LIKE 'Can you help me with this?%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Raining Outside (Conversation)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Raining Outside (Storytelling)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Raining Outside (Emotions)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Raining Outside (Interview)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Raining Outside (Daily)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Raining Outside (Business)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Raining Outside (News)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Raining Outside (Travel)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Raining Outside (Academic)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Raining Outside (Tongue twisters)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Raining Outside (Classic literature)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Raining Outside (Politics)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Raining Outside (Geopolitics)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Raining Outside (Speech)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Raining Outside (Diplomatic)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Raining Outside (Formal)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Raining Outside (Sports)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Raining Outside (Technology)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Raining Outside (Diagnostic)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Raining Outside (Ielts)' 
WHERE text_content LIKE 'It is raining outside right now.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Conversation)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Storytelling)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Emotions)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Interview)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Daily)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Business)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (News)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Travel)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Academic)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Tongue twisters)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Classic literature)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Politics)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Geopolitics)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Speech)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Diplomatic)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Formal)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Sports)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Technology)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Diagnostic)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Botanical Gardens Walk (Ielts)' 
WHERE text_content LIKE 'Whenever I have free time, I enjoy walking through the local botanical gardens.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'The Best Espresso (Conversation)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'The Best Espresso (Storytelling)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'The Best Espresso (Emotions)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'The Best Espresso (Interview)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'The Best Espresso (Daily)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'The Best Espresso (Business)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'The Best Espresso (News)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'The Best Espresso (Travel)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'The Best Espresso (Academic)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'The Best Espresso (Tongue twisters)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'The Best Espresso (Classic literature)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'The Best Espresso (Politics)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'The Best Espresso (Geopolitics)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'The Best Espresso (Speech)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'The Best Espresso (Diplomatic)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'The Best Espresso (Formal)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'The Best Espresso (Sports)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'The Best Espresso (Technology)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'The Best Espresso (Diagnostic)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'The Best Espresso (Ielts)' 
WHERE text_content LIKE 'The coffee shop on the corner makes the best espresso I have ever tasted.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Learning a New Language (Conversation)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Learning a New Language (Storytelling)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Learning a New Language (Emotions)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Learning a New Language (Interview)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Learning a New Language (Daily)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Learning a New Language (Business)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Learning a New Language (News)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Learning a New Language (Travel)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Learning a New Language (Academic)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Learning a New Language (Tongue twisters)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Learning a New Language (Classic literature)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Learning a New Language (Politics)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Learning a New Language (Geopolitics)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Learning a New Language (Speech)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Learning a New Language (Diplomatic)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Learning a New Language (Formal)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Learning a New Language (Sports)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Learning a New Language (Technology)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Learning a New Language (Diagnostic)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Learning a New Language (Ielts)' 
WHERE text_content LIKE 'Learning a new language can be challenging, but it is also incredibly rewarding.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Double Checking Work (Conversation)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Double Checking Work (Storytelling)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Double Checking Work (Emotions)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Double Checking Work (Interview)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Double Checking Work (Daily)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Double Checking Work (Business)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Double Checking Work (News)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Double Checking Work (Travel)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Double Checking Work (Academic)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Double Checking Work (Tongue twisters)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Double Checking Work (Classic literature)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Double Checking Work (Politics)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Double Checking Work (Geopolitics)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Double Checking Work (Speech)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Double Checking Work (Diplomatic)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Double Checking Work (Formal)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Double Checking Work (Sports)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Double Checking Work (Technology)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Double Checking Work (Diagnostic)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Double Checking Work (Ielts)' 
WHERE text_content LIKE 'Make sure you double check all your work before submitting the final report.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Conversation)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Storytelling)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Emotions)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Interview)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Daily)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Business)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (News)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Travel)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Academic)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Tongue twisters)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Classic literature)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Politics)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Geopolitics)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Speech)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Diplomatic)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Formal)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Sports)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Technology)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Diagnostic)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Spontaneous Road Trip (Ielts)' 
WHERE text_content LIKE 'We decided to take a spontaneous road trip across the country last summer.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Software Update Patches (Conversation)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Software Update Patches (Storytelling)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Software Update Patches (Emotions)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Software Update Patches (Interview)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Software Update Patches (Daily)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Software Update Patches (Business)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Software Update Patches (News)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Software Update Patches (Travel)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Software Update Patches (Academic)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Software Update Patches (Tongue twisters)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Software Update Patches (Classic literature)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Software Update Patches (Politics)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Software Update Patches (Geopolitics)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Software Update Patches (Speech)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Software Update Patches (Diplomatic)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Software Update Patches (Formal)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Software Update Patches (Sports)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Software Update Patches (Technology)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Software Update Patches (Diagnostic)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Software Update Patches (Ielts)' 
WHERE text_content LIKE 'The new software update includes several important security patches and bug fixes.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Conversation)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Storytelling)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Emotions)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Interview)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Daily)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Business)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Historical Fiction Preference (News)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Travel)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Academic)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Tongue twisters)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Classic literature)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Politics)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Geopolitics)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Speech)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Diplomatic)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Formal)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Sports)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Technology)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Diagnostic)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Historical Fiction Preference (Ielts)' 
WHERE text_content LIKE 'I usually prefer reading historical fiction over science fiction or fantasy novels.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Practicing the Piano (Conversation)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Practicing the Piano (Storytelling)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Practicing the Piano (Emotions)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Practicing the Piano (Interview)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Practicing the Piano (Daily)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Practicing the Piano (Business)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Practicing the Piano (News)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Practicing the Piano (Travel)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Practicing the Piano (Academic)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Practicing the Piano (Tongue twisters)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Practicing the Piano (Classic literature)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Practicing the Piano (Politics)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Practicing the Piano (Geopolitics)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Practicing the Piano (Speech)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Practicing the Piano (Diplomatic)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Practicing the Piano (Formal)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Practicing the Piano (Sports)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Practicing the Piano (Technology)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Practicing the Piano (Diagnostic)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Practicing the Piano (Ielts)' 
WHERE text_content LIKE 'She has been practicing the piano for five years and plays beautifully.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Building a Strong Network (Conversation)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Building a Strong Network (Storytelling)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Building a Strong Network (Emotions)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Building a Strong Network (Interview)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Building a Strong Network (Daily)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Building a Strong Network (Business)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Building a Strong Network (News)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Building a Strong Network (Travel)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Building a Strong Network (Academic)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Building a Strong Network (Tongue twisters)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Building a Strong Network (Classic literature)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Building a Strong Network (Politics)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Building a Strong Network (Geopolitics)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Building a Strong Network (Speech)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Building a Strong Network (Diplomatic)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Building a Strong Network (Formal)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Building a Strong Network (Sports)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Building a Strong Network (Technology)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Building a Strong Network (Diagnostic)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Building a Strong Network (Ielts)' 
WHERE text_content LIKE 'If you want to succeed in this industry, you need to build a strong network.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Conversation)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Storytelling)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Emotions)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Interview)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Daily)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Business)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (News)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Travel)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Academic)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Tongue twisters)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Classic literature)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Politics)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Geopolitics)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Speech)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Diplomatic)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Formal)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Sports)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Technology)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Diagnostic)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Heavy Thunderstorms Forecast (Ielts)' 
WHERE text_content LIKE 'The weather forecast predicts heavy thunderstorms for the entire weekend.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Conversation)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Storytelling)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Emotions)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Interview)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Daily)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Business)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (News)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Travel)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Academic)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Tongue twisters)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Classic literature)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Politics)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Geopolitics)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Speech)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Diplomatic)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Formal)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Sports)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Technology)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Diagnostic)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Overcoming Project Challenges (Ielts)' 
WHERE text_content LIKE 'Despite the unprecedented challenges we faced during the initial phases of the project, our dedicated team managed to deliver the final product ahead of schedule and under budget.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Conversation)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Storytelling)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Emotions)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Interview)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Daily)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Business)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (News)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Travel)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Academic)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Tongue twisters)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Classic literature)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Politics)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Geopolitics)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Speech)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Diplomatic)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Formal)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Sports)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Technology)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Diagnostic)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Geopolitical Landscape Analysis (Ielts)' 
WHERE text_content LIKE 'The complex geopolitical landscape requires a nuanced understanding of historical context, cultural differences, and economic interdependencies among nations.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Advancements in AI (Conversation)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Advancements in AI (Storytelling)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Advancements in AI (Emotions)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Advancements in AI (Interview)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Advancements in AI (Daily)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Advancements in AI (Business)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Advancements in AI (News)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Advancements in AI (Travel)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Advancements in AI (Academic)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Advancements in AI (Tongue twisters)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Advancements in AI (Classic literature)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Advancements in AI (Politics)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Advancements in AI (Geopolitics)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Advancements in AI (Speech)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Advancements in AI (Diplomatic)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Advancements in AI (Formal)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Advancements in AI (Sports)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Advancements in AI (Technology)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Advancements in AI (Diagnostic)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Advancements in AI (Ielts)' 
WHERE text_content LIKE 'Recent advancements in artificial intelligence and machine learning are fundamentally transforming the way we approach data analysis and problem solving in various scientific fields.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Conversation)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Storytelling)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Emotions)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Interview)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Daily)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Business)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Mitigating Climate Change (News)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Travel)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Academic)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Tongue twisters)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Classic literature)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Politics)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Geopolitics)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Speech)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Diplomatic)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Formal)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Sports)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Technology)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Diagnostic)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Mitigating Climate Change (Ielts)' 
WHERE text_content LIKE 'To effectively mitigate the long-term consequences of climate change, a globally coordinated effort focusing on sustainable energy initiatives and carbon reduction is absolutely essential.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Human Immune System (Conversation)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Human Immune System (Storytelling)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Human Immune System (Emotions)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Human Immune System (Interview)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Human Immune System (Daily)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Human Immune System (Business)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Human Immune System (News)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Human Immune System (Travel)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Human Immune System (Academic)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Human Immune System (Tongue twisters)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Human Immune System (Classic literature)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Human Immune System (Politics)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Human Immune System (Geopolitics)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Human Immune System (Speech)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Human Immune System (Diplomatic)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Human Immune System (Formal)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Human Immune System (Sports)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Human Immune System (Technology)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Human Immune System (Diagnostic)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Human Immune System (Ielts)' 
WHERE text_content LIKE 'The intricate mechanics of the human immune system continue to fascinate researchers, as they uncover new cellular pathways that regulate our body''s defense mechanisms.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Nature of Consciousness (Conversation)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Nature of Consciousness (Storytelling)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Nature of Consciousness (Emotions)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Nature of Consciousness (Interview)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Nature of Consciousness (Daily)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Nature of Consciousness (Business)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Nature of Consciousness (News)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Nature of Consciousness (Travel)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Nature of Consciousness (Academic)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Nature of Consciousness (Tongue twisters)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Nature of Consciousness (Classic literature)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Nature of Consciousness (Politics)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Nature of Consciousness (Geopolitics)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Nature of Consciousness (Speech)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Nature of Consciousness (Diplomatic)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Nature of Consciousness (Formal)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Nature of Consciousness (Sports)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Nature of Consciousness (Technology)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Nature of Consciousness (Diagnostic)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Nature of Consciousness (Ielts)' 
WHERE text_content LIKE 'While philosophical debates regarding the nature of consciousness have persisted for centuries, modern neuroscience is beginning to provide empirical evidence that challenges traditional perspectives.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Conversation)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Storytelling)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Emotions)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Interview)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Daily)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Business)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (News)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Travel)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Academic)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Tongue twisters)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Classic literature)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Politics)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Geopolitics)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Speech)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Diplomatic)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Formal)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Sports)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Technology)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Diagnostic)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Inclusive Workplace Environment (Ielts)' 
WHERE text_content LIKE 'In order to foster a more inclusive and equitable workplace environment, organizations must implement comprehensive diversity training programs and actively address systemic biases.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Global Financial Markets (Conversation)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Global Financial Markets (Storytelling)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Global Financial Markets (Emotions)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Global Financial Markets (Interview)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Global Financial Markets (Daily)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Global Financial Markets (Business)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Global Financial Markets (News)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Global Financial Markets (Travel)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Global Financial Markets (Academic)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Global Financial Markets (Tongue twisters)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Global Financial Markets (Classic literature)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Global Financial Markets (Politics)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Global Financial Markets (Geopolitics)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Global Financial Markets (Speech)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Global Financial Markets (Diplomatic)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Global Financial Markets (Formal)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Global Financial Markets (Sports)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Global Financial Markets (Technology)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Global Financial Markets (Diagnostic)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Global Financial Markets (Ielts)' 
WHERE text_content LIKE 'The sudden and dramatic fluctuations in the global financial markets caught many seasoned investors completely off guard, leading to significant economic repercussions worldwide.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Conversation)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Storytelling)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Emotions)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Interview)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Daily)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Business)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (News)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Travel)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Academic)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Tongue twisters)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Classic literature)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Politics)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Geopolitics)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Speech)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Diplomatic)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Formal)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Sports)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Technology)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Diagnostic)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Mastering a Musical Instrument (Ielts)' 
WHERE text_content LIKE 'Mastering a musical instrument at a professional level demands not only natural talent but also an extraordinary level of discipline, perseverance, and daily rigorous practice.%' 
  AND category = 'ielts';

UPDATE exercises 
SET title = 'Civic Center Architecture (Conversation)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'conversation';

UPDATE exercises 
SET title = 'Civic Center Architecture (Storytelling)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'storytelling';

UPDATE exercises 
SET title = 'Civic Center Architecture (Emotions)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'emotions';

UPDATE exercises 
SET title = 'Civic Center Architecture (Interview)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'interview';

UPDATE exercises 
SET title = 'Civic Center Architecture (Daily)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'daily';

UPDATE exercises 
SET title = 'Civic Center Architecture (Business)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'business';

UPDATE exercises 
SET title = 'Civic Center Architecture (News)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'news';

UPDATE exercises 
SET title = 'Civic Center Architecture (Travel)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'travel';

UPDATE exercises 
SET title = 'Civic Center Architecture (Academic)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'academic';

UPDATE exercises 
SET title = 'Civic Center Architecture (Tongue twisters)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'tongue_twisters';

UPDATE exercises 
SET title = 'Civic Center Architecture (Classic literature)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'classic_literature';

UPDATE exercises 
SET title = 'Civic Center Architecture (Politics)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'politics';

UPDATE exercises 
SET title = 'Civic Center Architecture (Geopolitics)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'geopolitics';

UPDATE exercises 
SET title = 'Civic Center Architecture (Speech)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'speech';

UPDATE exercises 
SET title = 'Civic Center Architecture (Diplomatic)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'diplomatic';

UPDATE exercises 
SET title = 'Civic Center Architecture (Formal)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'formal';

UPDATE exercises 
SET title = 'Civic Center Architecture (Sports)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'sports';

UPDATE exercises 
SET title = 'Civic Center Architecture (Technology)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'technology';

UPDATE exercises 
SET title = 'Civic Center Architecture (Diagnostic)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'diagnostic';

UPDATE exercises 
SET title = 'Civic Center Architecture (Ielts)' 
WHERE text_content LIKE 'The architectural design of the new civic center seamlessly integrates modern sustainable technologies with traditional aesthetic elements, creating a truly remarkable public space.%' 
  AND category = 'ielts';

