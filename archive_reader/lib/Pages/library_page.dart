import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
    const LibraryPage({Key? key, required this.title}) : super(key: key);
    final String title;
 
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const<Widget>[
                    Text('Library'),
                ],
            ),
        );
    }

    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Library';
    }
}