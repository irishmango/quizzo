import 'package:flutter/material.dart';
import 'package:quizzo/src/features/dashboard/widgets/categories.dart';
import 'package:quizzo/src/features/dashboard/widgets/quiz_main_tile.dart';
import 'package:quizzo/src/features/profile/presentation/profile_screen.dart';
import 'package:quizzo/src/features/progress/presentation/progress_screen.dart';
import 'package:quizzo/theme/styled_text/styled_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int? selectedCategoryIndex;

  List<Map<String, String>> get selectedQuizList {
    switch (selectedCategoryIndex) {
      case 0: // Shuffle
        final all = [
          ...geographyQuizzes,
          ...musicQuizzes,
          ...flutterQuizzes,
          ...politicsQuizzes,
          ...mathQuizzes,
        ];
        all.shuffle();
        return all.take(4).toList();
      case 1:
        return geographyQuizzes;
      case 2:
        return musicQuizzes;
      case 3:
        return flutterQuizzes;
      case 4:
        return politicsQuizzes;
      case 5:
        return mathQuizzes;
      default:
        return [];
    }
  }

  @override
    void initState() {
      super.initState();
      selectedCategoryIndex = 5; 
    }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                StyledTitleLargeText("Quizzo"),
              ],
            ),
            Categories(
              onCategorySelected: (index) {
                setState(() {
                  selectedCategoryIndex = index;
                });
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: selectedQuizList.length,
              itemBuilder: (context, index) {
                final quiz = selectedQuizList[index];
                return QuizMainTile(
                  title: quiz['title']!,
                  subtitle: quiz['subtitle']!,
                  imagePath: quiz['image']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


final List<Map<String, String>> musicQuizzes = [
  {
    'title': "The 80’s",
    'subtitle': "Test your 80’s music knowledge",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "The 90’s",
    'subtitle': "Test your 90’s music knowledge",
    'image': 'assets/img/cassett_1.png',
  },
  {
    'title': "The 00’s",
    'subtitle': "Test your 00’s music knowledge",
    'image': 'assets/img/cassett_2.png',
  },
];

final List<Map<String, String>> flutterQuizzes = [
  {
    'title': "Flutter Basics",
    'subtitle': "Build your Flutter fundamentals",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "State Management",
    'subtitle': "Test your state handling knowledge",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Widgets Mastery",
    'subtitle': "Recognize common Flutter widgets",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Navigation & Routing",
    'subtitle': "Understand Flutter navigation techniques",
    'image': 'assets/img/cassett.png',
  },
];

final List<Map<String, String>> politicsQuizzes = [
  {
    'title': "World Politics",
    'subtitle': "Challenge your knowledge of global affairs",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "US Presidents",
    'subtitle': "How well do you know US presidents?",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Political Ideologies",
    'subtitle': "Identify left, right, and everything in-between",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Government Systems",
    'subtitle': "Test your knowledge of how countries run",
    'image': 'assets/img/cassett.png',
  },
];

final List<Map<String, String>> mathQuizzes = [
  {
    'title': "Algebra Essentials",
    'subtitle': "Solve classic algebra problems",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Geometry Basics",
    'subtitle': "How well do you know shapes and angles?",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Math in History",
    'subtitle': "Discover famous mathematicians and breakthroughs",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Mental Math",
    'subtitle': "Test your speed and accuracy",
    'image': 'assets/img/cassett.png',
  },
];

final List<Map<String, String>> geographyQuizzes = [
  {
    'title': "World Capitals",
    'subtitle': "Test your knowledge of capital cities",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Continents & Oceans",
    'subtitle': "Know your way around the globe",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Landmarks & Wonders",
    'subtitle': "Identify famous global landmarks",
    'image': 'assets/img/cassett.png',
  },
  {
    'title': "Flags of the World",
    'subtitle': "Match countries to their flags",
    'image': 'assets/img/cassett.png',
  },
];