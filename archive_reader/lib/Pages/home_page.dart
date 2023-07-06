import 'package:flutter/material.dart';

import 'package:archive_reader/Styles/custom_styles.dart';
import 'package:archive_reader/Widgets/custom_widgets.dart';

class HomePage extends StatelessWidget {
    const HomePage({Key? key, required this.title}) : super(key: key);
    final String title;
 
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: Column(
                children: const<Widget>[
                    PaddedHeader(title: 'Resume Reading', 
                        leftPadding: 20.0,
                        rightPadding: 20.0,
                        topPadding: 20.0,),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Divider(
                        color: CustomStyles.primaryFont,
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        PaddedHeader(title: 'Recent Updates', leftRightPadding: 20.0),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Icon(Icons.keyboard_arrow_right, color: Color(0xFF860000),),
                        )
                      ],
                    )
                ],
            ),
        );
    }

    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Home';
    }
}

