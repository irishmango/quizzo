import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  final List<String> categories = const [
  'Geography',
  'Music',
  'Flutter',
  'Politics',
  'Math',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: categories.map((category) {
          return GestureDetector(
            onTap: () {
              print('Tapped on $category');
            },
            child: Container(
              height: 36,
              width: 130,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFE4DDCE),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xFF202020),
                  width: 2,
                ),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}