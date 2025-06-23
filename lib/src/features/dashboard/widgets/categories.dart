import 'package:flutter/material.dart';
import 'package:quizzo/theme/theme.dart';

class Categories extends StatefulWidget {
  final void Function(int index) onCategorySelected;

  const Categories({super.key, required this.onCategorySelected});
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categories = const [
  'Shuffle',
  'Geography',
  'Music',
  'Flutter',
  'Politics',
  'Math',
  ];

  int? selectedIndex = 0;

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
              setState(() {
                selectedIndex = categories.indexOf(category);
              });
              widget.onCategorySelected(selectedIndex!);
            },
            child: Container(
              height: 36,
              width: 130,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selectedIndex == categories.indexOf(category)
                ? AppColors.appTeal
                : AppColors.darkBeige,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xFF202020),
                  width: 2,
                ),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: selectedIndex == categories.indexOf(category)
                  ? Colors.white
                  : AppColors.appBlack,
                  fontSize: 16,
                  fontWeight: selectedIndex == categories.indexOf(category)
                  ? FontWeight.w700
                  : FontWeight.w500,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}