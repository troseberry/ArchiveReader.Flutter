import 'package:flutter/material.dart';

import 'package:archive_reader/Pages/explore_page.dart';
import 'package:archive_reader/Pages/home_page.dart';
import 'package:archive_reader/Pages/search_page.dart';
import 'package:archive_reader/Pages/library_page.dart';


class NavigationPage extends StatefulWidget {
    const NavigationPage({super.key});

    @override
    State<NavigationPage> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
    int _selectedIndex = 0;
    Widget _selectedPage = HomePage(title: 'Home');

    static const List<Widget> _pages = <Widget>[
        HomePage(title: 'Home'),
        LibraryPage(title: 'Library'),
        ExplorePage(title: 'Explore'),
        SearchPage(title: 'Search')
    ];

    @override
    void initState() {
        super.initState();

        _selectedPage = _pages.elementAt(_selectedIndex);
  }

    void onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
            _selectedPage = _pages.elementAt(_selectedIndex);
        });
    }

    @override
	Widget build(BuildContext context) {
		return Scaffold(
            appBar: AppBar(
                title: SizedBox(
                  child:
                    Text(_selectedPage.toString()),
                  ),
            ),
            body: Center(
                child: _pages.elementAt(_selectedIndex),
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem> [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.library_books),
                        label: 'Library',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore),
                        label: 'Explore'
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                    )

                ],
                currentIndex: _selectedIndex,
                onTap: onItemTapped,
            ),
        );
	}
}