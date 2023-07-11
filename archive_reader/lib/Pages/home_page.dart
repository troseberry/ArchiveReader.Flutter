import 'package:flutter/material.dart';

//import '../Styles/custom_styles.dart';
import '../Widgets/padded_header.dart';
import '../Widgets/padded_divider.dart';

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
                        allPadding: 20.0,),
                    PaddedDivider(),
                    Row(
                      children: [
                        PaddedHeader(title: 'Recent Updates', allPadding: 20.0),
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



