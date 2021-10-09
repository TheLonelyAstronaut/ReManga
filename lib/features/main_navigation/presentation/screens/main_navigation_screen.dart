import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remanga/features/bookmarks/presentation/screens/bookmarks_screen.dart';
import 'package:remanga/features/catalog/presentation/screens/catalog_screen.dart';
import 'package:remanga/features/home/presentation/screens/home_screen.dart';
import 'package:remanga/features/profile/presentation/screens/profile_screen.dart';
import 'package:remanga/features/search/presentation/screens/search_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  @override
  State<MainNavigationScreen> createState() {
    return MainNavigationScreenState();
  }

}

class MainNavigationScreenState extends State<MainNavigationScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int _selectedIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    CatalogScreen(),
    SearchScreen(),
    BookmarksScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller?.dispose();
  }

  void handleTabBarPress(int tabIndex) {
    setState(() {
      _selectedIndex = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.grey[300],
            ),
            label: 'Home',
            activeIcon: Icon(
              FontAwesomeIcons.home,
              color: Colors.purple[300],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.list,
              color: Colors.grey[300],
            ),
            label: 'Home',
            activeIcon: Icon(
              FontAwesomeIcons.list,
              color: Colors.purple[300],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search,
              color: Colors.grey[300],
            ),
            label: 'Search',
            activeIcon: Icon(
              FontAwesomeIcons.search,
              color: Colors.purple[300],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bookmark,
              color: Colors.grey[300],
            ),
            label: 'Bookmarks',
            activeIcon: Icon(
              FontAwesomeIcons.bookmark,
              color: Colors.purple[300],
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Colors.grey[300],
            ),
            label: 'Profile',
            activeIcon: Icon(
              FontAwesomeIcons.user,
              color: Colors.purple[300],
            ),
          ),
        ],
        onTap: this.handleTabBarPress,
      ),
    );
  }

}