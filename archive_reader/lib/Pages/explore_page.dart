
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:archive_reader/Models/work.dart';

import 'package:archive_reader/Widgets/padded_header.dart';
import 'package:archive_reader/Widgets/padded_divider.dart';
import "package:archive_reader/Styles/custom_styles.dart";

import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';



class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key, required this.title}) : super(key: key);
    final String title;

    @override
    State<ExplorePage> createState() => ExplorePageState();
}

class ExplorePageState extends State<ExplorePage> {
    late Future<List<Work>> futureWorks;

    @override
    void initState() {
        super.initState();

        futureWorks =  fetchWork();
    }

    @override
    Widget build(BuildContext context) 
    {
        //final PageController controller = new PageController();
        

        return SingleChildScrollView(
            child: SizedBox(
                width: double.infinity,
                child: Column(
                    children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                PaddedHeader(
                                    title: 'Find Your Favorites', 
                                    leftPadding: 20.0,
                                    rightPadding: 20.0,
                                    topPadding: 20.0,
                                    bottomPadding: 5.0,
                                ),
                          ],
                        ),
                        PaddedDivider(
                            leftRightPadding: 150, 
                            topBottomPadding: 5,
                            color: CustomStyles.primaryAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Text('Browse the archive by fandom and find new and \n interesting fanworks to read and enjoy.',
                                      textAlign: TextAlign.center,),
                              ],
                          ),
                        ),

                        FandomSpan(title: 'Anime & Manga'),
                        FandomSpan(title: 'Books & Literature'),
                        FandomSpan(title: 'Cartoons, Comics, & Graphic Novels'),
                        FandomSpan(title: 'Celebrities & Real People'),
                        FandomSpan(title: 'Movies'),
                        FandomSpan(title: 'Music & Bands'),
                        FandomSpan(title: 'Other Media'),
                        FandomSpan(title: 'Theater'),
                        FandomSpan(title: 'TV Shows'),
                        FandomSpan(title: 'Video Games'),
                        FandomSpan(title: 'Unrecognized Fandoms'),
                        
                    ],
                ),
            ),
        );
    }



    Future<List<Work>> fetchWork() async {
        final response = await http
            .get(Uri.parse('https://ao3api.netlify.app/.netlify/functions/GetAllFanficsOnPage?pageType=workSearchResultsPage&searchQuery=clexa&pageNumber=1'));
    
        if (response.statusCode == 200) {
            //return Work.fromJson(jsonDecode(response.body));

/*
            var worksList = jsonDecode(response.body)
                .map((data) => Work.fromJson(data))
                .toList();
            
            return worksList;
            */
            
            var list = json.decode(response.body).cast<Map<String, dynamic>>();
            List<Work> result = list.map<Work>((json) {
                return Work.fromJson(json);
            }).toList();

            return result;

        }
        else {
            throw Exception('Failed to load data');
        }
    }

    
    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Explore';
    }
}

class FandomSpan extends StatelessWidget {
    const FandomSpan({
        super.key,
        required this.title,
    });

    final String title;
    void loadFandom() {

    }
    
    @override
    Widget build(BuildContext context) {

        return GestureDetector(
            onTap:() => loadFandom(),
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                    height: 50,
                    child: Column(
                        children: [
                            Row(
                                children: [
                                    Text(title),
                                    Spacer(),
                                    Icon(Icons.keyboard_arrow_right, color: Color(0xFF860000),)
                                ],
                            ),
                            Spacer(),
                            PaddedDivider(thickness: 1, bottomPadding: 5.0,),
                        ],
                    ),
                ),
            ),
        );
    }
}





/*


import 'package:flutter/material.dart';

import 'package:archive_reader/Models/work.dart';

import 'package:archive_reader/Widgets/padded_header.dart';
import 'package:archive_reader/Styles/custom_styles.dart';

import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key, required this.title}) : super(key: key);
    final String title;

    @override
    State<ExplorePage> createState() => ExplorePageState();
}

class ExplorePageState extends State<ExplorePage> {
    late Future<List<Work>> futureWorks;

    @override
    void initState() {
        super.initState();

        futureWorks =  fetchWork();
    }

    @override
    Widget build(BuildContext context) 
    {
        return SizedBox(
            width: double.infinity,
            child: Column(
                children: [
                    Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            PaddedHeader(title: 'Find Your Favorites', allPadding: 20.0,),
                        ],
                    ),
                    Divider(
                      color: CustomStyles.primaryFont,
                      thickness: 2,
                    ),
                    FutureBuilder<List<Work>>(
                        future: futureWorks,
                        builder: (context, snapshot) {
                            if (snapshot.hasData) {
                                return Text(snapshot.data!.toString());
                            }
                            else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                            }

                            // By default, show a loading spinner.
                            return const CircularProgressIndicator();
                        },
                        
                        )
                ],
            ),
        );
    }



    Future<List<Work>> fetchWork() async {
        final response = await http
            .get(Uri.parse('https://ao3api.netlify.app/.netlify/functions/GetAllFanficsOnPage?pageType=workSearchResultsPage&searchQuery=clexa&pageNumber=1'));
    
        if (response.statusCode == 200) {
            //return Work.fromJson(jsonDecode(response.body));

/*
            var worksList = jsonDecode(response.body)
                .map((data) => Work.fromJson(data))
                .toList();
            
            return worksList;
            */
            
            var list = json.decode(response.body).cast<Map<String, dynamic>>();
            List<Work> result = list.map<Work>((json) {
                return Work.fromJson(json);
            }).toList();

            return result;

        }
        else {
            throw Exception('Failed to load data');
        }
    }

    
    @override
    String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
        return 'Explore';
    }
}


*/


