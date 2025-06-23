class Achievement {
  final String name;
  final String pathName;
  final String description;
  final String id;

  Achievement({
    required this.name,
    required this.pathName,
    required this.description,
    required this.id
  });
}

Map<String, Map<String, String>> achievements = {
  "first-quiz": {
    "name": "First Steps",
    "pathName": "",
    "description": "Complete your first quiz",
    "theme": "progress"
  },
  "quiz-rookie": {
    "name": "Quiz Rookie",
    "pathName": "",
    "description": "Complete 10 quizzes",
    "theme": "progress"
  },
  "quiz-pro": {
    "name": "Quiz Pro",
    "pathName": "",
    "description": "Complete 100 quizzes",
    "theme": "progress"
  },
  "quiz-legend": {
    "name": "Quiz Legend",
    "pathName": "",
    "description": "Complete 500 quizzes",
    "theme": "progress"
  },
  "5-day-streak": {
    "name": "5-Day Streak",
    "pathName": "",
    "description": "Complete quizzes for 5 days straight",
    "theme": "commitment"
  },
  "10-day-streak": {
    "name": "10-Day Streak",
    "pathName": "",
    "description": "10-day quiz streak!",
    "theme": "commitment"
  },
  "30-day-streak": {
    "name": "30-Day Streak",
    "pathName": "",
    "description": "Quiz daily for a whole month",
    "theme": "commitment"
  },
  "100-day-streak": {
    "name": "100-Day Streak",
    "pathName": "",
    "description": "100 days of consistent quizzes!",
    "theme": "commitment"
  },
  "music-master": {
    "name": "Music Master",
    "pathName": "",
    "description": "Complete all music quizzes",
    "theme": "category"
  },
  "geo-genius": {
    "name": "Geography Genius",
    "pathName": "",
    "description": "Ace all geography quizzes",
    "theme": "category"
  },
  "math-maniac": {
    "name": "Math Maniac",
    "pathName": "",
    "description": "Conquer the math section",
    "theme": "category"
  },
  "history-buff": {
    "name": "History Buff",
    "pathName": "",
    "description": "Master every history quiz",
    "theme": "category"
  },
  "politics-pro": {
    "name": "Politics Pro",
    "pathName": "",
    "description": "Complete all politics quizzes",
    "theme": "category"
  },
  "streak-sniper": {
    "name": "Streak Sniper",
    "pathName": "",
    "description": "Get 10 correct answers in a row",
    "theme": "skill"
  },
  "accuracy-ace": {
    "name": "Accuracy Ace",
    "pathName": "",
    "description": "Finish a quiz with 100% accuracy",
    "theme": "skill"
  },
  "fast-finger": {
    "name": "Fast Finger",
    "pathName": "",
    "description": "Complete a quiz in record time",
    "theme": "speed"
  },
  "comeback-king": {
    "name": "Comeback King",
    "pathName": "",
    "description": "Fail one quiz, then ace the next",
    "theme": "resilience"
  },
  "all-rounder": {
    "name": "All-Rounder",
    "pathName": "",
    "description": "Complete quizzes in 5+ categories",
    "theme": "category"
  },
  "overachiever": {
    "name": "Overachiever",
    "pathName": "",
    "description": "Score over 90% in 10 quizzes",
    "theme": "skill"
  },
  "starter-pack": {
    "name": "Starter Pack",
    "pathName": "",
    "description": "Unlock 5 achievements",
    "theme": "milestone"
  },
  "collector": {
    "name": "Collector",
    "pathName": "",
    "description": "Unlock 15 achievements",
    "theme": "milestone"
  },
  "completionist": {
    "name": "Completionist",
    "pathName": "",
    "description": "Unlock all 25 achievements",
    "theme": "milestone"
  },
  "lucky-guess": {
    "name": "Lucky Guess",
    "pathName": "",
    "description": "Guess all answers correctly in one quiz",
    "theme": "fun"
  },
  "quiz-night-owl": {
    "name": "Night Owl",
    "pathName": "",
    "description": "Complete a quiz between 2-4AM",
    "theme": "fun"
  },
  "early-bird": {
    "name": "Early Bird",
    "pathName": "",
    "description": "Complete a quiz before 7AM",
    "theme": "fun"
  },
};