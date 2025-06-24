class User {
  final String id;
  final String email;
  final String username;
  final String password;
  final int xp;
  final int quizzesCompleted;
  final int highestDailyStreak;
  final int highestCorrectStreak;
  final String favCategory;
  

  const User({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.xp,
    required this.quizzesCompleted,
    required this.highestCorrectStreak,
    required this.highestDailyStreak,
    required this.favCategory,
    }
  );
}