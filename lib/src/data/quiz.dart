class Quiz {
  final String title;
  final String id;
  final String subtitle;
  final String description1;
  final String description2;
  final String description3;
  final String imagePath;
  final List<Question> questions;
  // final int timeLimitSeconds; 
  // final int pointsPerQuestion; 
  // final bool isTimed;

  Quiz({
      required this.title,
      required this.id,
      required this.subtitle,
      required this.description1,
      required this.description2,
      required this.description3,
      required this.imagePath,
      required this.questions,
      // required this.timeLimitSeconds,
      // required this.pointsPerQuestion,
      // required this.isTimed,  
    });

}

class Question {
  final String text;
  final List<String> options;
  final int correctIndex;

  Question({
    required this.text,
    required this.options,
    required this.correctIndex,
  });


  
  }
