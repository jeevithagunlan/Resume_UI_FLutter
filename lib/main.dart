import 'package:flutter/material.dart';
import 'widgets/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(230, 41, 128, 43),
        ),
      ),
      // Replace DropdownWidget() with a valid widget, e.g., ImageWidget()
      home: Home_Widget_UI(),
    );
  }
}
