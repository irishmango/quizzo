import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:quizzo/app.dart';
import 'package:quizzo/src/data/database_repository.dart';
import 'package:quizzo/src/data/mock_database_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final DatabaseRepository db = MockDatabaseRepository();
  runApp(App(db: db));
}