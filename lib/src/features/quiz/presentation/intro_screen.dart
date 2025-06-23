import 'package:flutter/material.dart';
import 'package:quizzo/src/features/quiz/presentation/quiz_screen.dart';
import 'package:quizzo/src/features/quiz/presentation/quiz_widget.dart';

class IntroScreen extends StatelessWidget {
  final String title;
  final String description1;
  final String description2;
  final String description3;


  const IntroScreen({super.key, this.title = "The 80’s", this.description1 = "You think you know your 80’s music?", this.description2 = "You know who the lead singer of Thin Lizzy was?", this.description3 = "You know who sang ‘Livin on a prayer’?"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 237, 231, 1),
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          decoration: BoxDecoration(
            color: Color.fromRGBO(252, 191, 3, 1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(0xFF202020),
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
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
                SizedBox(height: 10,),
                Center(
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Anaheim',
                          fontSize: 64,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 100,),
                      Column(
                        spacing: 12,
                        children: [
                          Text(
                            description1,
                            style: TextStyle(fontSize: 16, fontFamily: 'Anaheim', fontWeight: FontWeight.w500),
                          ),
                          Text(
                            description2,
                            style: TextStyle(fontSize: 16, fontFamily: 'Anaheim', fontWeight: FontWeight.w500),
                          ),
                          Text(
                            description3,
                            style: TextStyle(fontSize: 16, fontFamily: 'Anaheim', fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                        ],
                      ),
                ),
                
                const Spacer(),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 128,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(64, 96, 240, 1),
                        borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                      ),
                      child: Center(child: 
                      Text("Let's Rock!", 
                      style: TextStyle(fontFamily: 'Anaheim', fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromRGBO(245, 245, 245, 1)),)),
                    ),
                  )
                ),
                SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}