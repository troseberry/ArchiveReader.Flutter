import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    const HomePage({Key? key, required this.title}) : super(key: key);
    final String title;
 
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const<Widget>[
                    Text('Home'),
                ],
            ),
        );
    }

    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Home';
    }
}