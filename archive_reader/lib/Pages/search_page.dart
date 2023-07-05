import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key, required this.title}) : super(key: key);
  final String title;
 
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const<Widget>[
                    Text('Search'),
                ],
            ),
        );
    }

    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Search';
    }
}