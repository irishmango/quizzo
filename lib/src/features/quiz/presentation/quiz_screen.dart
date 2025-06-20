import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Sample static question and options
  final String question = 'Who was the lead singer of the band "Thin Lizzy"?';
  final List<String> options = [
    'Ozzy Osbourne',
    'Phil Lynott',
    'Freddie Mercury',
    'Lemmy Kilmister',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 237, 231, 1),
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          decoration: BoxDecoration(
            color: Color.fromRGBO(224, 214, 197, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color(0xFF202020),
              width: 2,
            ),
          ),
          child: Column(
            children: [
              // Header bar
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'X',
                          style: TextStyle(
                            fontFamily: 'Anaheim',
                            fontSize: 48,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'The 80’s',
                      style: TextStyle(
                        fontFamily: 'Anaheim',
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 48),
                  ],
                ),
              ),

              // Quiz content
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          question,
                          style: TextStyle(
                            fontFamily: 'Anaheim',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 48),

                        // Answer options
                        ...options.map(
                          (option) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 6),
                            child: GestureDetector(
                              onTap: () {
                                // TODO: add answer logic
                              },
                              child: Container(
                                height: 57,
                                width: 277,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    option,
                                    style: TextStyle(
                                      fontFamily: 'Anaheim',
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}