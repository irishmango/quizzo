import 'package:quizzo/src/data/category.dart';
import 'package:quizzo/src/data/quiz.dart';
import 'package:quizzo/src/data/user.dart';
import 'package:quizzo/src/data/database_repository.dart';

class MockDatabaseRepository implements DatabaseRepository {
  final List<User> users = [];
  final List<Quiz> quizResults = [];

  @override
  Future<User> addUser(User user) async {
    await Future.delayed(const Duration(seconds: 0));
    users.add(user);
    return user;
  }

  @override
  Future<List<Category>> getAllCategories() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return categoryQuizMap.keys
        .where((key) => key != 'shuffle')
        .map((id) => Category(
              id: id,
              title: id[0].toUpperCase() + id.substring(1),
              quizzes: categoryQuizMap[id]!,
            ))
        .toList();
  }

  @override
  Future<List<Quiz>> getAllQuizzes() async {
    await Future.delayed(const Duration(seconds: 0));
    final quizzes = <Quiz>[];
    for (final quizList in categoryQuizMap.values) {
      quizzes.addAll(quizList);
    }
    return quizzes;
  }

  @override
  Future<List<Quiz>> getQuizzesFromCategory(String category) async {
    await Future.delayed(const Duration(seconds: 0));
    return categoryQuizMap[category] ?? [];
  }

  @override
  Future<Quiz> getQuiz(String quizId) async {
    await Future.delayed(const Duration(seconds: 0));
    for (final quizList in categoryQuizMap.values) {
      for (final quiz in quizList) {
        if (quiz.id == quizId) return quiz;
      }
    }
    throw Exception("Quiz not found");
  }

  @override
  Future<List<dynamic>> getUserQuizResults(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<void> saveQuizResult(result) {
    throw UnimplementedError();
  }

  
  final Map<String, List<Quiz>> categoryQuizMap = {
    'shuffle': [...geographyQuizzes, ...musicQuizzes, ...flutterQuizzes, ...politicsQuizzes, ...mathQuizzes],
    'geography': geographyQuizzes,
    'music': musicQuizzes,
    'flutter': flutterQuizzes,
    'politics': politicsQuizzes,
    'math': mathQuizzes,
  };
}

final List<Quiz> musicQuizzes = [
  Quiz(
    title: "The 80’s",
    id: 'music_80',
    subtitle: "Test your 80’s music knowledge",
    imagePath: 'assets/img/cassett.png',
    description1: "You think you know your 80’s music?",
    description2: "You know who the lead singer of Thin Lizzy was?",
    description3: "You know who sang ‘Livin on a prayer’?",
    questions: [
      Question(
        text: 'Who was the lead singer of the band "Thin Lizzy"?',
        options: ['Ozzy Osbourne', 'Phil Lynott', 'Freddie Mercury', 'Lemmy Kilmister'],
        correctIndex: 1,
      ),
      Question(
        text: 'Which band released the song "Bohemian Rhapsody"?',
        options: ['The Beatles', 'Queen', 'Pink Floyd', 'Led Zeppelin'],
        correctIndex: 1,
      ),
      Question(
        text: 'Which Michael Jackson album was released in 1982?',
        options: ['Thriller', 'Bad', 'Dangerous', 'Off the Wall'],
        correctIndex: 0,
      ),
      Question(
        text: 'Which genre gained massive popularity in the 80s?',
        options: ['Grunge', 'Disco', 'New Wave', 'Trap'],
        correctIndex: 2,
      ),
      Question(
        text: 'Who sang "Like a Virgin"?',
        options: ['Cyndi Lauper', 'Madonna', 'Whitney Houston', 'Cher'],
        correctIndex: 1,
      ),
    ],
  ),
  Quiz(
    title: "The 90’s",
    id: 'music_90',
    subtitle: "Test your 90’s music knowledge",
    imagePath: 'assets/img/cassett_1.png',
    description1: "You remember your 90’s anthems?",
    description2: "You know who the frontman of Oasis was?",
    description3: "You remember which group sang ‘Wannabe’?",
    questions: [
      Question(
        text: 'Which band released the hit "Smells Like Teen Spirit"?',
        options: ['Pearl Jam', 'Green Day', 'Nirvana', 'Radiohead'],
        correctIndex: 2,
      ),
      Question(
        text: 'Who was the frontman of Oasis?',
        options: ['Liam Gallagher', 'Noel Gallagher', 'Chris Martin', 'Bono'],
        correctIndex: 0,
      ),
      Question(
        text: 'Which artist is known for the album "Jagged Little Pill"?',
        options: ['Fiona Apple', 'Sheryl Crow', 'Alanis Morissette', 'Jewel'],
        correctIndex: 2,
      ),
      Question(
        text: 'Which female group released "Wannabe"?',
        options: ['All Saints', 'Spice Girls', 'TLC', 'Destiny\'s Child'],
        correctIndex: 1,
      ),
      Question(
        text: 'What genre did Tupac Shakur perform?',
        options: ['Rock', 'Jazz', 'Hip-Hop', 'Pop'],
        correctIndex: 2,
      ),
    ],
  ),
  Quiz(
    title: "The 00’s",
    id: 'music_00',
    subtitle: "Test your 00’s music knowledge",
    imagePath: 'assets/img/cassett_2.png',
    description1: "You vibed to early 2000s hits?",
    description2: "You know who dropped ‘Lose Yourself’?",
    description3: "You remember who sang ‘Hips Don’t Lie’?",
    questions: [
      Question(
        text: 'Who released the song "Crazy in Love" in 2003?',
        options: ['Alicia Keys', 'Beyoncé', 'Kelly Rowland', 'Ciara'],
        correctIndex: 1,
      ),
      Question(
        text: 'Which band is known for the album "American Idiot"?',
        options: ['Blink-182', 'Green Day', 'Sum 41', 'My Chemical Romance'],
        correctIndex: 1,
      ),
      Question(
        text: 'Who sang "Hips Don\'t Lie"?',
        options: ['Shakira', 'Rihanna', 'Jennifer Lopez', 'Beyoncé'],
        correctIndex: 0,
      ),
      Question(
        text: 'Which rapper had a hit with "Lose Yourself"?',
        options: ['Jay-Z', 'Kanye West', 'Eminem', '50 Cent'],
        correctIndex: 2,
      ),
      Question(
        text: 'Which pop-punk band sang "I’m Just a Kid"?',
        options: ['Simple Plan', 'Good Charlotte', 'Paramore', 'The Used'],
        correctIndex: 0,
      ),
    ],
  ),
];

final List<Quiz> flutterQuizzes = [
  Quiz(
    title: "Flutter Basics",
    id: 'flutter_basics',
    subtitle: "Build your Flutter fundamentals",
    imagePath: 'assets/img/flutter_1.png',
    description1: "You think you know your widgets?",
    description2: "You know what Stateless means?",
    description3: "You built a UI before?",
    questions: [
      Question(
        text: "What is the root widget of a Flutter app?",
        options: ["MaterialApp", "Container", "Scaffold", "AppBar"],
        correctIndex: 0,
      ),
      Question(
        text: "Which keyword is used to declare a constant widget?",
        options: ["var", "const", "final", "static"],
        correctIndex: 1,
      ),
      Question(
        text: "What language is used to build Flutter apps?",
        options: ["Kotlin", "Swift", "Dart", "JavaScript"],
        correctIndex: 2,
      ),
      Question(
        text: "Which widget is used for layouts in a vertical direction?",
        options: ["Row", "Column", "Stack", "Wrap"],
        correctIndex: 1,
      ),
      Question(
        text: "Which widget adds padding around a child?",
        options: ["SizedBox", "Container", "Padding", "Align"],
        correctIndex: 2,
      ),
    ],
  ),
  Quiz(
    title: "State Management",
    id: 'flutter_state',
    subtitle: "Test your state handling knowledge",
    imagePath: 'assets/img/cassett.png',
    description1: "You know the difference between Provider and Bloc?",
    description2: "You ever lifted state up?",
    description3: "You managed a counter app without setState?",
    questions: [
      Question(
        text: "Which method is used to update UI in a StatefulWidget?",
        options: ["build()", "initState()", "setState()", "dispose()"],
        correctIndex: 2,
      ),
      Question(
        text: "Which is NOT a state management approach in Flutter?",
        options: ["Provider", "Redux", "Bloc", "Bootstrap"],
        correctIndex: 3,
      ),
      Question(
        text: "Where do you typically store logic in the BLoC pattern?",
        options: ["In the widget", "In the View", "In the Bloc", "In the Model"],
        correctIndex: 2,
      ),
      Question(
        text: "Which package is commonly used for state management?",
        options: ["flutter_bloc", "http", "intl", "url_launcher"],
        correctIndex: 0,
      ),
      Question(
        text: "Which widget allows listening to changes in Provider?",
        options: ["Consumer", "FutureBuilder", "StreamBuilder", "AnimatedBuilder"],
        correctIndex: 0,
      ),
    ],
  ),
  Quiz(
    title: "Widgets Mastery",
    id: 'flutter_widgets',
    subtitle: "Recognize common Flutter widgets",
    imagePath: 'assets/img/cassett.png',
    description1: "You know your Rows from your Columns?",
    description2: "You can layout anything with Stack?",
    description3: "You memorized the Flutter widget tree?",
    questions: [
      Question(
        text: "Which widget arranges children in a horizontal direction?",
        options: ["Column", "Stack", "Row", "GridView"],
        correctIndex: 2,
      ),
      Question(
        text: "Which widget positions children relative to each other?",
        options: ["Stack", "Row", "Column", "ListView"],
        correctIndex: 0,
      ),
      Question(
        text: "Which widget creates a scrollable list?",
        options: ["Column", "ListView", "Row", "Wrap"],
        correctIndex: 1,
      ),
      Question(
        text: "Which widget is typically used to display text?",
        options: ["Text", "Label", "String", "Message"],
        correctIndex: 0,
      ),
      Question(
        text: "Which widget gives rounded corners and shadows?",
        options: ["Container", "Card", "BoxDecoration", "Scaffold"],
        correctIndex: 1,
      ),
    ],
  ),
  Quiz(
    title: "Navigation & Routing",
    id: 'flutter_nav',
    subtitle: "Understand Flutter navigation techniques",
    imagePath: 'assets/img/cassett.png',
    description1: "You’ve pushed and popped before?",
    description2: "You know the Navigator stack?",
    description3: "You handled named routes like a pro?",
    questions: [
      Question(
        text: "What is used to navigate to a new screen?",
        options: ["Navigator.push()", "MaterialApp.route()", "Route.push()", "Context.push()"],
        correctIndex: 0,
      ),
      Question(
        text: "Which method removes the current screen from the stack?",
        options: ["Navigator.close()", "Navigator.pop()", "Navigator.remove()", "Route.pop()"],
        correctIndex: 1,
      ),
      Question(
        text: "What is the main benefit of named routes?",
        options: ["Shorter code", "Automatic navigation", "Centralized routing", "Faster navigation"],
        correctIndex: 2,
      ),
      Question(
        text: "Which argument do you use to access route data?",
        options: ["context.arguments", "settings.arguments", "route.data", "ModalRoute.data"],
        correctIndex: 1,
      ),
      Question(
        text: "Where do you define named routes?",
        options: ["in Navigator", "in Scaffold", "in MaterialApp", "in Route widget"],
        correctIndex: 2,
      ),
    ],
  ),
];

final List<Quiz> politicsQuizzes = [
  Quiz(
    title: "World Politics",
    id: 'politics_world',
    subtitle: "Challenge your knowledge of global affairs",
    imagePath: 'assets/img/cassett.png',
    description1: "You know your UN from your EU?",
    description2: "You recognize major world leaders?",
    description3: "You’ve followed international conflicts?",
    questions: [
      Question(
        text: "Which organization was founded in 1945 to promote peace?",
        options: ["UN", "EU", "NATO", "ASEAN"],
        correctIndex: 0,
      ),
      Question(
        text: "Who is the current President of France (as of 2025)?",
        options: ["Emmanuel Macron", "Nicolas Sarkozy", "Francois Hollande", "Marine Le Pen"],
        correctIndex: 0,
      ),
      Question(
        text: "What country left the EU in 2020?",
        options: ["Germany", "France", "United Kingdom", "Italy"],
        correctIndex: 2,
      ),
      Question(
        text: "Which country is known for the One-China Policy?",
        options: ["Japan", "North Korea", "Taiwan", "China"],
        correctIndex: 3,
      ),
      Question(
        text: "Which leader has served the longest as Russia’s head of state?",
        options: ["Boris Yeltsin", "Vladimir Putin", "Dmitry Medvedev", "Lenin"],
        correctIndex: 1,
      ),
    ],
  ),
  Quiz(
    title: "US Presidents",
    id: 'politics_us_pres',
    subtitle: "How well do you know US presidents?",
    imagePath: 'assets/img/cassett.png',
    description1: "You remember who came after Lincoln?",
    description2: "You know who served non-consecutive terms?",
    description3: "You recall the president during 9/11?",
    questions: [
      Question(
        text: "Who was the first President of the United States?",
        options: ["Abraham Lincoln", "Thomas Jefferson", "John Adams", "George Washington"],
        correctIndex: 3,
      ),
      Question(
        text: "Which president served two non-consecutive terms?",
        options: ["Theodore Roosevelt", "Grover Cleveland", "Ulysses S. Grant", "Woodrow Wilson"],
        correctIndex: 1,
      ),
      Question(
        text: "Who was the president during the 9/11 attacks?",
        options: ["George H. W. Bush", "George W. Bush", "Bill Clinton", "Barack Obama"],
        correctIndex: 1,
      ),
      Question(
        text: "Who signed the Emancipation Proclamation?",
        options: ["Ulysses S. Grant", "Andrew Johnson", "Abraham Lincoln", "Franklin D. Roosevelt"],
        correctIndex: 2,
      ),
      Question(
        text: "Which U.S. president was involved in the Watergate scandal?",
        options: ["John F. Kennedy", "Jimmy Carter", "Ronald Reagan", "Richard Nixon"],
        correctIndex: 3,
      ),
    ],
  ),
  Quiz(
    title: "Political Ideologies",
    id: 'politics_ideologies',
    subtitle: "Identify left, right, and everything in-between",
    imagePath: 'assets/img/cassett.png',
    description1: "You know your socialism from capitalism?",
    description2: "You can define libertarianism?",
    description3: "You recognize authoritarian regimes?",
    questions: [
      Question(
        text: "What does socialism advocate?",
        options: ["Minimal government", "State ownership", "Monarchy", "Religious rule"],
        correctIndex: 1,
      ),
      Question(
        text: "Which ideology promotes individual liberty and limited government?",
        options: ["Fascism", "Communism", "Liberalism", "Libertarianism"],
        correctIndex: 3,
      ),
      Question(
        text: "Which ideology is characterized by extreme nationalism and authoritarian leadership?",
        options: ["Socialism", "Anarchism", "Fascism", "Libertarianism"],
        correctIndex: 2,
      ),
      Question(
        text: "Which term best describes a centrist ideology?",
        options: ["Moderate", "Radical", "Conservative", "Extremist"],
        correctIndex: 0,
      ),
      Question(
        text: "Which ideology is typically associated with free markets and private property?",
        options: ["Capitalism", "Socialism", "Communism", "Anarchism"],
        correctIndex: 0,
      ),
    ],
  ),
  Quiz(
    title: "Government Systems",
    id: 'politics_gov_sys',
    subtitle: "Test your knowledge of how countries run",
    imagePath: 'assets/img/cassett.png',
    description1: "You know the difference between monarchy and democracy?",
    description2: "You’ve studied parliamentary systems?",
    description3: "You understand checks and balances?",
    questions: [
      Question(
        text: "What is the key feature of a democracy?",
        options: ["Rule by one", "Rule by few", "Rule by many", "Rule by king"],
        correctIndex: 2,
      ),
      Question(
        text: "In a parliamentary system, who is typically the head of state?",
        options: ["President", "Monarch", "Prime Minister", "Governor"],
        correctIndex: 2,
      ),
      Question(
        text: "Which system separates powers into branches?",
        options: ["Dictatorship", "Monarchy", "Republic", "Federalism"],
        correctIndex: 2,
      ),
      Question(
        text: "What is a monarchy?",
        options: ["Rule by elected officials", "Rule by a king/queen", "Military rule", "Corporate rule"],
        correctIndex: 1,
      ),
      Question(
        text: "Which country uses a federal system of government?",
        options: ["United Kingdom", "France", "United States", "Cuba"],
        correctIndex: 2,
      ),
    ],
  ),
];

final List<Quiz> mathQuizzes = [
  Quiz(
    title: "Algebra Essentials",
    id: 'math_algebra',
    subtitle: "Solve classic algebra problems",
    imagePath: 'assets/img/cassett.png',
    description1: "You remember solving for x?",
    description2: "You can factor quadratics in your sleep?",
    description3: "You fear no variable?",
    questions: [
      Question(
        text: "What is the solution to x + 5 = 12?",
        options: ["5", "6", "7", "17"],
        correctIndex: 2,
      ),
      Question(
        text: "What is the value of x in 2x = 10?",
        options: ["4", "5", "6", "8"],
        correctIndex: 1,
      ),
      Question(
        text: "Which of these is a linear equation?",
        options: ["x^2 + 2x", "x - 3 = 2", "x^2 = 9", "3x^2 + 2x - 1"],
        correctIndex: 1,
      ),
      Question(
        text: "Simplify: (3x + 2x) - x",
        options: ["4x", "5x", "3x", "2x"],
        correctIndex: 0,
      ),
      Question(
        text: "What is the square root of 49?",
        options: ["5", "6", "7", "8"],
        correctIndex: 2,
      ),
    ],
  ),
  Quiz(
    title: "Geometry Basics",
    id: 'math_geometry',
    subtitle: "How well do you know shapes and angles?",
    imagePath: 'assets/img/cassett.png',
    description1: "You know your triangles from your circles?",
    description2: "You can measure any angle?",
    description3: "You’ve mastered perimeter and area?",
    questions: [
      Question(
        text: "How many degrees are in a triangle?",
        options: ["90", "180", "270", "360"],
        correctIndex: 1,
      ),
      Question(
        text: "What do you call a 6-sided polygon?",
        options: ["Pentagon", "Hexagon", "Heptagon", "Octagon"],
        correctIndex: 1,
      ),
      Question(
        text: "What is the perimeter of a square with side 4?",
        options: ["8", "12", "16", "20"],
        correctIndex: 2,
      ),
      Question(
        text: "A right angle has how many degrees?",
        options: ["45", "60", "90", "120"],
        correctIndex: 2,
      ),
      Question(
        text: "Which shape has no sides?",
        options: ["Square", "Triangle", "Circle", "Hexagon"],
        correctIndex: 2,
      ),
    ],
  ),
  Quiz(
    title: "Math in History",
    id: 'math_history',
    subtitle: "Discover famous mathematicians and breakthroughs",
    imagePath: 'assets/img/cassett.png',
    description1: "You know who discovered pi?",
    description2: "You remember Euclid and Pythagoras?",
    description3: "You appreciate ancient algorithms?",
    questions: [
      Question(
        text: "Who is known as the father of geometry?",
        options: ["Euclid", "Newton", "Einstein", "Galileo"],
        correctIndex: 0,
      ),
      Question(
        text: "Which civilization used a base-60 system?",
        options: ["Romans", "Babylonians", "Greeks", "Egyptians"],
        correctIndex: 1,
      ),
      Question(
        text: "Who formulated the law of gravity?",
        options: ["Archimedes", "Newton", "Galileo", "Pascal"],
        correctIndex: 1,
      ),
      Question(
        text: "What is the famous theorem by Pythagoras?",
        options: ["a + b = c", "a^2 + b^2 = c^2", "E = mc^2", "V = IR"],
        correctIndex: 1,
      ),
      Question(
        text: "Which Greek letter represents pi?",
        options: ["π", "θ", "Σ", "Ω"],
        correctIndex: 0,
      ),
    ],
  ),
  Quiz(
    title: "Mental Math",
    id: 'math_mental',
    subtitle: "Test your speed and accuracy",
    imagePath: 'assets/img/cassett.png',
    description1: "You can add and subtract in your head?",
    description2: "You calculate change without a calculator?",
    description3: "You’re a human calculator?",
    questions: [
      Question(
        text: "What is 15 + 27?",
        options: ["32", "42", "45", "50"],
        correctIndex: 2,
      ),
      Question(
        text: "What is 100 - 37?",
        options: ["63", "67", "73", "77"],
        correctIndex: 0,
      ),
      Question(
        text: "What is 12 x 4?",
        options: ["36", "44", "48", "52"],
        correctIndex: 2,
      ),
      Question(
        text: "Divide 81 by 9",
        options: ["9", "8", "7", "6"],
        correctIndex: 0,
      ),
      Question(
        text: "What is 25% of 80?",
        options: ["15", "18", "20", "25"],
        correctIndex: 2,
      ),
    ],
  ),
];

final List<Quiz> geographyQuizzes = [
  Quiz(
    title: "World Capitals",
    id: 'geo_capitals',
    subtitle: "Test your knowledge of capital cities",
    imagePath: 'assets/img/cassett.png',
    description1: "You can name every capital?",
    description2: "You know where each one is on the map?",
    description3: "You’ve memorized obscure island capitals?",
    questions: [
      Question(text: "What is the capital of France?", options: ["Berlin", "Madrid", "Rome", "Paris"], correctIndex: 3),
      Question(text: "What is the capital of Canada?", options: ["Toronto", "Vancouver", "Ottawa", "Montreal"], correctIndex: 2),
      Question(text: "What is the capital of Japan?", options: ["Kyoto", "Osaka", "Tokyo", "Hiroshima"], correctIndex: 2),
      Question(text: "What is the capital of Brazil?", options: ["Rio", "São Paulo", "Brasília", "Salvador"], correctIndex: 2),
      Question(text: "What is the capital of Australia?", options: ["Sydney", "Melbourne", "Canberra", "Perth"], correctIndex: 2),
    ],
  ),
  Quiz(
    title: "Continents & Oceans",
    id: 'geo_continents_oceans',
    subtitle: "Know your way around the globe",
    imagePath: 'assets/img/cassett.png',
    description1: "You know all 7 continents?",
    description2: "You can name the oceans?",
    description3: "You know where each is located?",
    questions: [
      Question(text: "How many continents are there?", options: ["5", "6", "7", "8"], correctIndex: 2),
      Question(text: "Which is the largest continent?", options: ["Africa", "Asia", "North America", "Europe"], correctIndex: 1),
      Question(text: "Which ocean is the deepest?", options: ["Atlantic", "Indian", "Arctic", "Pacific"], correctIndex: 3),
      Question(text: "Which continent is Egypt located in?", options: ["Asia", "Africa", "Europe", "South America"], correctIndex: 1),
      Question(text: "Which is the smallest ocean?", options: ["Indian", "Atlantic", "Arctic", "Southern"], correctIndex: 2),
    ],
  ),
  Quiz(
    title: "Landmarks & Wonders",
    id: 'geo_landmarks',
    subtitle: "Identify famous global landmarks",
    imagePath: 'assets/img/cassett.png',
    description1: "You’ve seen them all on postcards?",
    description2: "You know where each wonder is?",
    description3: "You can recognize landmarks from pictures?",
    questions: [
      Question(text: "Where is the Eiffel Tower located?", options: ["London", "Rome", "Paris", "Berlin"], correctIndex: 2),
      Question(text: "Which country is home to Machu Picchu?", options: ["Chile", "Brazil", "Peru", "Argentina"], correctIndex: 2),
      Question(text: "The Great Wall is found in which country?", options: ["Japan", "India", "China", "Korea"], correctIndex: 2),
      Question(text: "The Colosseum is located in which city?", options: ["Athens", "Rome", "Florence", "Venice"], correctIndex: 1),
      Question(text: "Where is the Statue of Liberty?", options: ["Los Angeles", "Washington D.C.", "New York", "Chicago"], correctIndex: 2),
    ],
  ),
  Quiz(
    title: "Flags of the World",
    id: 'geo_flags',
    subtitle: "Match countries to their flags",
    imagePath: 'assets/img/cassett.png',
    description1: "You know every country’s flag by heart?",
    description2: "You can spot colors and symbols instantly?",
    description3: "You studied vexillology for fun?",
    questions: [
      Question(text: "Which country’s flag is red with a white cross?", options: ["Denmark", "Switzerland", "England", "Norway"], correctIndex: 1),
      Question(text: "Which flag has a red circle in the center?", options: ["China", "Bangladesh", "Japan", "South Korea"], correctIndex: 2),
      Question(text: "Which country has a maple leaf on its flag?", options: ["USA", "UK", "Canada", "Australia"], correctIndex: 2),
      Question(text: "Which flag has green, white, and orange stripes?", options: ["India", "Ireland", "Ivory Coast", "All of the above"], correctIndex: 3),
      Question(text: "Which flag features a crescent and a star?", options: ["Turkey", "Pakistan", "Malaysia", "All of the above"], correctIndex: 3),
    ],
  ),
];