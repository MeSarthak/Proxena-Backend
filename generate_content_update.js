const fs = require('fs');
const path = require('path');

const domains = {
  domain1: {
    categories: ['conversation', 'storytelling', 'emotions', 'daily', 'interview'],
    easy: [
      { t: "Power of Authenticity", c: "Authentic conversations have the power to heal, inspire, and connect us on a deeper level." },
      { t: "Listening and Truth", c: "Every great relationship starts with the willingness to listen and the courage to speak your truth." },
      { t: "Sharing Your Journey", c: "Sharing your personal journey can profoundly impact someone who is silently facing similar struggles." },
      { t: "Emotional Intelligence", c: "Emotional intelligence is just as important as intellect when navigating the complexities of life." },
      { t: "Thoughtful Responses", c: "A thoughtful response during a difficult moment can instantly defuse tension and build trust." },
      { t: "Shaping Reality", c: "We shape our reality through the stories we tell ourselves and the words we share with others." },
      { t: "Confident Voice", c: "Confidence in your voice comes from knowing that your unique perspective is inherently valuable." },
      { t: "Memorable Interactions", c: "The most memorable interactions are those where both people feel truly seen and understood." },
      { t: "Embracing Vulnerability", c: "Embrace vulnerability, for it is the hidden strength that makes human connection possible." }
    ],
    medium: [
      { t: "Genuine Dialogue", c: "When we engage in genuine dialogue, we open ourselves up to new perspectives that challenge our preconceptions. True communication is not about winning an argument, but about expanding our understanding of the human experience." },
      { t: "Art of Storytelling", c: "Mastering the art of storytelling allows you to translate complex emotions into relatable experiences. A well-told narrative can capture the imagination, bridging the gap between strangers and fostering profound empathy." },
      { t: "Tone and Pacing", c: "During an interview or formal discussion, your tone and pacing carry as much weight as your actual words. Taking a moment to breathe and center yourself before speaking projects quiet confidence and professional authority." },
      { t: "Everyday Interactions", c: "Our daily interactions may seem routine, but they form the invisible fabric of our social lives. Approaching everyday conversations with kindness and presence can transform a mundane exchange into a moment of genuine connection." },
      { t: "Expressing Emotions", c: "Expressing difficult emotions requires both courage and a precise vocabulary. When we accurately articulate how we feel, we give others the opportunity to support us effectively, turning personal struggle into shared strength." },
      { t: "Calm Under Pressure", c: "The ability to remain calm and articulate under pressure is a hallmark of emotional maturity. When conflicts arise, responding with measured, empathetic words can de-escalate the situation and pave the way for meaningful resolution." },
      { t: "Active Listening", c: "Active listening is a dynamic process that involves fully concentrating on what is being said rather than passively hearing the message. It is the fundamental building block of any successful personal or professional relationship." },
      { t: "Finding Your Voice", c: "Finding your authentic voice takes time and self-reflection. As you grow more comfortable with your own communication style, you will discover that people are naturally drawn to sincerity and unwavering honesty." },
      { t: "Compelling Narratives", c: "A compelling narrative doesn't just relay facts; it weaves them together in a way that resonates emotionally with the audience. Cultivating this skill empowers you to advocate for yourself and inspire those around you." }
    ],
    hard: [
      { t: "Psychology of Breakthroughs", c: "The intricacies of human psychology dictate that our most profound personal breakthroughs often emerge from periods of intense vulnerability and emotional uncertainty, challenging us to reevaluate our core identity." },
      { t: "High-Stakes Interviews", c: "During high-stakes professional interviews, the candidate who successfully balances authentic self-representation with strategic corporate alignment consistently outperforms those who rely solely on rehearsed, formulaic responses." },
      { t: "Evolutionary Storytelling", c: "Storytelling transcends mere entertainment; it is an evolutionary survival mechanism that enables communities to encode complex moral lessons, preserve generational wisdom, and foster cohesive social architectures." },
      { t: "Interpersonal Subtleties", c: "Mastering the subtleties of interpersonal communication requires an acute awareness of non-verbal cues, microscopic shifts in tone, and the underlying contextual dynamics that govern every human interaction." },
      { t: "Dismantling Cognitive Dissonance", c: "When we actively dismantle the cognitive dissonance separating our private emotional state from our outward expressions, we cultivate a profound sense of inner peace and relational authenticity." },
      { t: "Compounding Daily Routines", c: "The daily routines we establish may seem insignificant in isolation, but compounded over decades, they dictate the ultimate trajectory of our professional achievements and the depth of our personal fulfillment." },
      { t: "Precise Emotional Vocabulary", c: "Articulating complex emotional states with precise vocabulary not only accelerates psychological healing but also provides our support networks with the clarity required to offer meaningful, targeted assistance." },
      { t: "Navigating Disagreements", c: "Navigating ideological disagreements gracefully demands that we temporarily suspend our deeply ingrained defensive reflexes in favor of genuine intellectual curiosity and empathetic active listening." },
      { t: "Modern Narrative Arc", c: "The modern narrative arc, whether deployed in corporate branding or personal memoirs, relies heavily on establishing a relatable protagonist who must overcome systemic friction to achieve self-actualization." }
    ]
  },
  domain2: {
    categories: ['business', 'news', 'academic', 'politics', 'geopolitics', 'technology', 'diplomatic', 'formal'],
    easy: [
      { t: "Collaborative Innovation", c: "Innovation thrives when diverse teams collaborate and challenge the status quo with bold ideas." },
      { t: "Economic Strategy", c: "A strong economic strategy must balance immediate profitability with long-term sustainable growth." },
      { t: "Effective Diplomacy", c: "Effective diplomacy relies on mutual respect, strategic compromise, and clear communication." },
      { t: "Digital Advancements", c: "Advancements in digital technology continue to reshape the global landscape at an unprecedented pace." },
      { t: "Academic Integrity", c: "Academic integrity requires rigorous research, objective analysis, and transparent reporting." },
      { t: "Crisis Leadership", c: "Strong leadership during a crisis provides clarity, direction, and reassurance to the entire organization." },
      { t: "Interconnected Markets", c: "Global markets are highly interconnected, meaning local policies often have widespread international impact." },
      { t: "Professional Proposals", c: "A well-crafted professional proposal clearly outlines the benefits, risks, and actionable next steps." },
      { t: "Civic Engagement", c: "Civic engagement and informed public discourse are the cornerstones of a healthy, functioning society." }
    ],
    medium: [
      { t: "AI Integration", c: "The rapid integration of artificial intelligence into enterprise operations demands a fundamental shift in how we approach problem-solving. Organizations that proactively adapt their strategies will maintain a crucial competitive advantage in the modern economy." },
      { t: "Navigating Geopolitics", c: "Navigating geopolitical tensions requires a nuanced understanding of historical grievances and current economic dependencies. Diplomats must meticulously choose their words to de-escalate conflicts while firmly protecting their national interests." },
      { t: "Peer Review Process", c: "In the realm of academic research, the peer review process serves as a vital safeguard for maintaining factual accuracy. Scholars depend on constructive criticism to refine their hypotheses and contribute meaningful discoveries to their respective fields." },
      { t: "Responsible Journalism", c: "Modern journalism faces the unprecedented challenge of combating misinformation in real time. Responsible reporting demands rigorous fact-checking and an unwavering commitment to presenting objective truth to the public." },
      { t: "Corporate ESG", c: "Corporate leadership is increasingly focused on environmental, social, and governance criteria. Investors recognize that companies demonstrating ethical practices and sustainable operations are better positioned for long-term financial stability." },
      { t: "Formal Negotiation", c: "The language of formal negotiation is inherently strategic, often relying on subtle implications rather than blunt demands. Mastering this sophisticated communication style is essential for finalizing complex international agreements." },
      { t: "Technological Breakthroughs", c: "Technological breakthroughs rarely happen in isolation; they are the result of cumulative scientific progress and cross-disciplinary collaboration. Fostering an environment that encourages intellectual risk-taking is vital for continuous innovation." },
      { t: "Public Policy Decisions", c: "Public policy decisions must carefully weigh empirical data against the immediate needs of the community. Effective political leaders excel at translating complex legislative frameworks into clear, actionable benefits for their constituents." },
      { t: "Supply Chain Resilience", c: "In today's globalized economy, supply chain resilience is a critical factor for business survival. Companies must anticipate potential disruptions and build flexible networks to ensure the consistent delivery of goods and services." }
    ],
    hard: [
      { t: "Decentralized Finance", c: "The accelerating proliferation of decentralized financial technologies poses a formidable challenge to traditional regulatory frameworks, compelling international banking consortiums to fundamentally restructure their operational paradigms." },
      { t: "Geopolitical Supply", c: "Geopolitical stability in the twenty-first century is increasingly dependent on securing resilient supply chains for critical semiconductor components, rather than solely relying on conventional military deterrence." },
      { t: "Academic Methodologies", c: "Rigorous academic methodologies demand that researchers rigorously isolate confounding variables, ensuring that empirical conclusions withstand the intense scrutiny of double-blind peer review and reproducible experimentation." },
      { t: "Corporate Sustainability", c: "Corporate sustainability initiatives must evolve beyond superficial marketing campaigns and integrate deeply into the core logistical infrastructure, prioritizing long-term ecological balance over immediate quarterly dividends." },
      { t: "Diplomatic Resolution", c: "The diplomatic resolution of entrenched territorial disputes requires negotiators to architect innovative treaties that allow all participating factions to claim ideological victory while making substantial pragmatic concessions." },
      { t: "Ethical AI Constraints", c: "As artificial intelligence algorithms become increasingly autonomous, the technology sector faces an urgent philosophical imperative to encode ethical constraints that prevent the exacerbation of historical socioeconomic biases." },
      { t: "Political Governance", c: "Effective political governance necessitates the delicate orchestration of competing bureaucratic interests, requiring leaders to synthesize highly technical policy recommendations into cohesive, actionable legislative agendas." },
      { t: "Journalistic Integrity", c: "The integrity of global journalism is currently under siege by highly sophisticated disinformation campaigns, rendering the verification of primary sources and the contextualization of digital media more critical than ever." },
      { t: "Corporate Communications", c: "Formal corporate communications must strike a precarious balance between transparency and strategic confidentiality, particularly when addressing hostile shareholders during periods of unanticipated market volatility." }
    ]
  },
  domain3: {
    categories: ['travel', 'tongue_twisters', 'classic_literature', 'speech', 'sports', 'diagnostic', 'ielts'],
    easy: [
      { t: "Exploring Cultures", c: "Exploring new cultures challenges our assumptions and broadens our understanding of the world." },
      { t: "Athletic Success", c: "Athletic success is driven by unwavering discipline, physical endurance, and mental toughness." },
      { t: "Timeless Literature", c: "Classic literature offers a timeless window into the universal struggles and triumphs of humanity." },
      { t: "Powerful Public Speech", c: "A powerful public speech connects with the audience through shared values and a compelling vision." },
      { t: "Precise Articulation", c: "Precise articulation is crucial for ensuring that your spoken message is understood without ambiguity." },
      { t: "Transformative Travel", c: "Traveling off the beaten path often leads to the most memorable and transformative experiences." },
      { t: "Consistent Practice", c: "Consistent daily practice is the only reliable method for achieving fluency in a new language." },
      { t: "Great Literature", c: "Great literature challenges the reader to look beyond the surface and question their own reality." },
      { t: "Sports Teamwork", c: "Teamwork in sports teaches invaluable lessons about trust, communication, and shared sacrifice." }
    ],
    medium: [
      { t: "Immersive Travel", c: "The immersive experience of traveling through unfamiliar landscapes forces us to adapt and communicate in creative ways. These journeys not only expose us to incredible diversity but also reveal the fundamental similarities that connect all people." },
      { t: "Vocal Mastery", c: "Mastering complex vocal exercises and tongue twisters develops the muscular memory required for flawless articulation. This rigorous phonetic practice directly translates to more confident and authoritative public speaking in any scenario." },
      { t: "Athletic Endurance", c: "The endurance required in competitive sports is as much psychological as it is physical. Athletes who train their minds to overcome fatigue and self-doubt often find that this resilience empowers them in their personal and professional lives." },
      { t: "Keynote Delivery", c: "When delivering a keynote address, the speaker must carefully orchestrate their vocal inflection and body language. A truly captivating speech harmonizes these physical elements with a deeply inspiring message that resonates with the audience." },
      { t: "Studying Classics", c: "Studying classic literature exposes us to the evolution of language and the enduring nature of human conflict. By analyzing the prose of great authors, we refine our own ability to construct elegant, persuasive arguments." },
      { t: "Diagnostic Assessment", c: "Diagnostic language assessments are designed to identify specific phonetic weaknesses and structural knowledge gaps. By objectively measuring these metrics, learners can create highly targeted study plans that dramatically accelerate their path to fluency." },
      { t: "Exam Proficiency", c: "Achieving a high band score in international proficiency exams requires more than just a wide vocabulary. Candidates must demonstrate the ability to construct logically coherent arguments, use complex grammatical structures, and speak with natural fluency." },
      { t: "Well-Crafted Sentences", c: "The beauty of a well-crafted sentence lies in its rhythm and economy of words. Great orators understand that pausing for emphasis is just as crucial as the words themselves, allowing the audience time to absorb the full weight of the message." },
      { t: "Cultural Immersion", c: "Cultural immersion is the ultimate test of language acquisition. Navigating foreign environments without the safety net of translation forces the brain to rapidly internalize new linguistic patterns and contextual social cues." }
    ],
    hard: [
      { t: "Cultural Immersion", c: "Immersive international travel systematically dismantles ethnocentric prejudices by forcing individuals to navigate unfamiliar linguistic environments, ultimately fostering a more nuanced appreciation for global cultural heterogeneity." },
      { t: "Physiological Articulation", c: "The physiological mechanics of advanced vocal articulation require the synchronized execution of the diaphragm, larynx, and articulatory muscles, a process that is significantly enhanced through repetitive phonetic conditioning." },
      { t: "Classical Archetypes", c: "Scholarly analysis of classical literature reveals that the fundamental archetypes of human conflict remain remarkably consistent across millennia, despite drastic shifts in technological advancement and societal organization." },
      { t: "Oratorical Performance", c: "Delivering a truly compelling oratorical performance necessitates the strategic manipulation of rhetorical devices, utilizing deliberate pauses and dynamic vocal projection to capture and sustain the audience's undivided attention." },
      { t: "Athletic Optimization", c: "Elite athletic performance at the championship level is characterized not merely by genetic predisposition, but by the relentless, methodical optimization of biomechanics, nutritional chemistry, and psychological resilience." },
      { t: "Linguistic Diagnostics", c: "Comprehensive linguistic diagnostic assessments evaluate a multitude of intricate variables, including phonemic accuracy, syntactic complexity, and prosodic intonation, to construct a highly personalized pedagogical intervention." },
      { t: "Language Proficiency", c: "To secure the highest possible evaluation in standardized language proficiency examinations, candidates must seamlessly deploy advanced lexical resources while maintaining an uncompromised flow of coherent, logical argumentation." },
      { t: "Neurological Speech", c: "The deliberate practice of complex tongue twisters forces the neurological pathways governing speech production to adapt rapidly, thereby eliminating habitual mispronunciations and significantly elevating overall conversational fluency." },
      { t: "Societal Transformations", c: "Historical speeches that have catalyzed significant societal transformations are invariably characterized by their ability to crystallize abstract philosophical ideals into visceral, emotionally resonant imperatives for immediate action." }
    ]
  }
};

let sql = `-- Migration 017: Overwrite generated exercises with highly impactful, meaningful content
-- This targets the exercises created in migration 015 & updated in 016 (identified by their "(Category)" suffix or generated phrasing).

`;

const difficulties = ['easy', 'medium', 'hard'];

for (const [domainName, domainData] of Object.entries(domains)) {
  for (const category of domainData.categories) {
    const formattedCategory = category.charAt(0).toUpperCase() + category.slice(1).replace('_', ' ');

    for (const diff of difficulties) {
      const items = domainData[diff];
      for (let i = 0; i < 9; i++) {
        const item = items[i];
        const safeTitle = `${item.t} (${formattedCategory})`.replace(/'/g, "''");
        const safeContent = item.c.replace(/'/g, "''");
        
        sql += `
WITH target AS (
  SELECT id FROM exercises 
  WHERE category = '${category}' 
    AND difficulty = '${diff}' 
    AND (title LIKE '%(%)' OR title LIKE '% Practice %')
  ORDER BY id ASC
  OFFSET ${i} LIMIT 1
)
UPDATE exercises
SET title = '${safeTitle}', 
    text_content = '${safeContent}'
WHERE id = (SELECT id FROM target);
`;
      }
    }
  }
}

const outPath = path.join(__dirname, 'src', 'migrations', '017_improve_exercise_content.sql');
fs.writeFileSync(outPath, sql);
console.log(`Generated migration 017 to improve exercise text content`);
