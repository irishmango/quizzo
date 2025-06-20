import 'package:quizzo/src/data/category.dart';
import 'package:quizzo/src/data/quiz.dart';
import 'package:quizzo/src/data/quiz_results.dart';
import 'package:quizzo/src/data/user.dart';

abstract class DatabaseRepository {

  // Add user
  Future<void> addUser(User user);

  // Get all topics
  Future<List<Category>> getAllCategories();

  // Get quizzes within a specific chapter
  Future<List<Quiz>> getQuizzes(String categoryId);

  // Get all quizzes (across all topics/chapters)
  Future<List<Quiz>> getAllQuizzes();

  // Get singular quiz
  Future<Quiz> getQuiz(String quizId);

  // Save quiz results
  Future<void> saveQuizResult(QuizResult result);

  // Get quiz results for a specific user
  Future<List<QuizResult>> getUserQuizResults(String userId);
}

