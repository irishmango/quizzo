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
    "name": "First Blood",
    "pathName": "assets/achievements/first_quiz.png",
    "description": "Complete your first quiz",
    "theme": "progress"
  },
  "quiz-rookie": {
    "name": "Quiz Rookie",
    "pathName": "assets/achievements/quiz_rookie.png",
    "description": "Complete 10 quizzes",
    "theme": "progress"
  },
  "quiz-pro": {
    "name": "Quiz Pro",
    "pathName": "assets/achievements/quiz_pro.png",
    "description": "Complete 100 quizzes",
    "theme": "progress"
  },
  "quiz-legend": {
    "name": "Quiz Legend",
    "pathName": "assets/achievements/quiz_legend.png",
    "description": "Complete 500 quizzes",
    "theme": "progress"
  },
  "5-day-streak": {
    "name": "5-Day Streak",
    "pathName": "assets/achievements/5_day.png",
    "description": "Complete quizzes for 5 days straight",
    "theme": "commitment"
  },
  "10-day-streak": {
    "name": "10-Day Streak",
    "pathName": "assets/achievements/10_day.png",
    "description": "10-day quiz streak!",
    "theme": "commitment"
  },
  "30-day-streak": {
    "name": "30-Day Streak",
    "pathName": "assets/achievements/30_day.png",
    "description": "Quiz daily for a whole month",
    "theme": "commitment"
  },
  "100-day-streak": {
    "name": "100-Day Streak",
    "pathName": "assets/achievements/100_day.png",
    "description": "100 days of consistent quizzes!",
    "theme": "commitment"
  },
  "music-master": {
    "name": "Music Master",
    "pathName": "assets/achievements/music_master.png",
    "description": "Complete all music quizzes",
    "theme": "category"
  },
  "geo-genius": {
    "name": "Geography Genius",
    "pathName": "assets/achievements/geo_genius.png",
    "description": "Ace all geography quizzes",
    "theme": "category"
  },
  "math-maniac": {
    "name": "Math Maniac",
    "pathName": "assets/achievements/math_maniac.png",
    "description": "Conquer the math section",
    "theme": "category"
  },
  "history-buff": {
    "name": "History Buff",
    "pathName": "assets/achievements/history_buff.png",
    "description": "Master every history quiz",
    "theme": "category"
  },
  "politics-pro": {
    "name": "Politics Pro",
    "pathName": "assets/achievements/politics_pro.png",
    "description": "Complete all politics quizzes",
    "theme": "category"
  },
  "streak-sniper": {
    "name": "Streak Sniper",
    "pathName": "assets/achievements/streak_sniper.png",
    "description": "Get 10 correct answers in a row",
    "theme": "skill"
  },
  "accuracy-ace": {
    "name": "Accuracy Ace",
    "pathName": "assets/achievements/accuracy_ace.png",
    "description": "Finish a quiz with 100% accuracy",
    "theme": "skill"
  },
  "fast-finger": {
    "name": "Fast Finger",
    "pathName": "assets/achievements/fast_finger.png",
    "description": "Complete a quiz in record time",
    "theme": "speed"
  },
  "comeback-king": {
    "name": "Comeback King",
    "pathName": "assets/achievements/comeback_king.png",
    "description": "Fail one quiz, then ace the next",
    "theme": "resilience"
  },
  "all-rounder": {
    "name": "All-Rounder",
    "pathName": "assets/achievements/all_rounder.png",
    "description": "Complete quizzes in 5+ categories",
    "theme": "category"
  },
  "overachiever": {
    "name": "Overachiever",
    "pathName": "assets/achievements/overachiever.png",
    "description": "Score over 90% in 10 quizzes",
    "theme": "skill"
  },
  "starter-pack": {
    "name": "Starter Pack",
    "pathName": "assets/achievements/starter_pack.png",
    "description": "Unlock 5 achievements",
    "theme": "milestone"
  },
  "collector": {
    "name": "Collector",
    "pathName": "assets/achievements/collector.png",
    "description": "Unlock 15 achievements",
    "theme": "milestone"
  },
  "completionist": {
    "name": "Completionist",
    "pathName": "assets/achievements/completionist.png",
    "description": "Unlock all 25 achievements",
    "theme": "milestone"
  },
  "lucky-guess": {
    "name": "Lucky Guess",
    "pathName": "assets/achievements/lucky_guess.png",
    "description": "Guess all answers correctly in one quiz",
    "theme": "fun"
  },
  "quiz-night-owl": {
    "name": "Night Owl",
    "pathName": "assets/achievements/night_owl.png",
    "description": "Complete a quiz between 2-4AM",
    "theme": "fun"
  },
  "early-bird": {
    "name": "Early Bird",
    "pathName": "assets/achievements/early_bird.png",
    "description": "Complete a quiz before 7AM",
    "theme": "fun"
  },
};