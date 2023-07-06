// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';
import 'navigation_page.dart';
import 'package:archive_reader/Styles/custom_styles.dart';

class ArchiveReaderApp extends StatelessWidget {
  const ArchiveReaderApp({Key? key}) : super(key: key);
 
// App Entry Point
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Archive Reader',
      theme: ThemeData(
        primaryColor: CustomStyles.primaryAccent,
        appBarTheme: AppBarTheme(
            color: CustomStyles.primaryAccent,
        ),
        //primarySwatch: MaterialColor(0xFF860000, ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          backgroundColor: CustomStyles.defaultBackground,
          selectedItemColor: CustomStyles.primaryAccent,
          unselectedItemColor: CustomStyles.defaultForeground,
        ),
      ),
      home: const NavigationPage(),
    );
  }
}
 