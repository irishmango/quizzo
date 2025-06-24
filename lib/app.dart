import 'package:flutter/material.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/src/features/dashboard/presentation/home_scaffold.dart';
import 'package:quizzo/theme/theme.dart';

class App extends StatelessWidget {
  final DatabaseRepository db;

  const App({super.key, required this.db});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: primaryTheme,
      home: HomeScaffold(db: db),
    );
  }
}