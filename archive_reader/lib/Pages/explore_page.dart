import 'package:archive_reader/Widgets/padded_header.dart';
import 'package:archive_reader/Styles/custom_styles.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key, required this.title}) : super(key: key);
  final String title;
 
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                children: const<Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            PaddedHeader(title: 'Find Your Favorites', allPadding: 20.0,),
                        ],
                    ),
                    Divider(
                      color: CustomStyles.primaryFont,
                      thickness: 2,
                    )
                ],
            ),
        );
    }

    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Explore';
    }
}