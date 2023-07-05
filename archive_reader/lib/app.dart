// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';
import 'navigation_page.dart';
 

class ArchiveReaderApp extends StatelessWidget {
  const ArchiveReaderApp({Key? key}) : super(key: key);
 
// App Entry Point
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Archive Reader',
      theme: ThemeData(
        primaryColor: Color(0xFF860000),
        appBarTheme: AppBarTheme(
            color: Color(0xFF860000),
        ),
        //primarySwatch: MaterialColor(0xFF860000, ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          backgroundColor: Color(0xFFFFFFFF),
          selectedItemColor: Color(0xFF860000),
          unselectedItemColor: Color(0xFFE0E0E0),
        ),
      ),
      home: const NavigationPage(),
    );
  }
}
 