import 'package:flutter/material.dart';
import 'package:quizzo/app.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/src/data/mock_database_repository.dart';


void main() {
  final DatabaseRepository db = MockDatabaseRepository();
  runApp(App(db: db));
}
