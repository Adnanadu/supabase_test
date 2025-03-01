import 'package:flutter/material.dart';
import 'package:notes_app/core/secret/secret_key.dart';
import 'package:notes_app/feature/notePage/view/pages/note_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Supabase.initialize(
    url: "https://hqrvqdeesdbnfhqmtvrv.supabase.co",
    anonKey: Secret.apiKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotePage(),
    );
  }
}
