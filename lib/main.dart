import 'package:flutter/material.dart';
import 'package:myapp/notes.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCWjRAQyd2MnwM3wCZ2Diwc2OeJp7UYWzU", 
      appId: "1:872887699760:android:4b17d8b7aa5c3761fc60f5", 
      messagingSenderId: "872887699760", 
      projectId: "act5-a3395")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NoteScreen());
  }
}