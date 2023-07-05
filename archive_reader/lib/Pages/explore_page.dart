import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key, required this.title}) : super(key: key);
  final String title;
 
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const<Widget>[
                    Text('Explore'),
                ],
            ),
        );
    }

    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Explore';
    }
}