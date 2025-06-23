import 'package:flutter/material.dart';
import 'package:quizzo/src/features/dashboard/presentation/dashboard_screen.dart';
import 'package:quizzo/src/features/dashboard/presentation/home_scaffold.dart';
import 'package:quizzo/src/features/quiz/presentation/intro_screen.dart';
import 'package:quizzo/theme/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: HomeScaffold(),
  ));
}
