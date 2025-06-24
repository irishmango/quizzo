import 'package:flutter/material.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/theme/theme.dart';

class CategoriesWidget extends StatefulWidget {
  final DatabaseRepository db;
  final void Function(int index) onCategorySelected;

  const CategoriesWidget({super.key, required this.onCategorySelected, required this.db});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<String> categories = [];
  int? selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  void _loadCategories() async {
  final fetchedCategories = await widget.db.getAllCategories();
  setState(() {
    categories = [
      'Shuffle',
      ...fetchedCategories.map((cat) => cat.title),
    ];
  });
}

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: categories.map((category) {
        final index = categories.indexOf(category);
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            widget.onCategorySelected(index);
          },
          child: Container(
            height: 36,
            width: 130,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selectedIndex == index
                  ? AppColors.appTeal
                  : AppColors.darkBeige,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFF202020),
                width: 2,
              ),
            ),
            child: Text(
              category,
              style: TextStyle(
                color: selectedIndex == index
                    ? Colors.white
                    : AppColors.appBlack,
                fontSize: 16,
                fontWeight: selectedIndex == index
                    ? FontWeight.w700
                    : FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}