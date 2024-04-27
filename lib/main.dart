import 'package:flutter/material.dart';
import 'package:devoir/pages/candidat_form_page.dart';
import 'package:devoir/pages/candidat_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CandidatList(),

    );
  }
}
