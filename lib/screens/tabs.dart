import 'package:fifa/screens/all_teams.dart';
import 'package:fifa/screens/my_team.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreen();
  }
}

class _TabsScreen extends State<TabsScreen> {
  int _selectedTabIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const AllTeamScreen();
    if (_selectedTabIndex == 1) {
      activeScreen = const MyTeamSceeen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 15,
          onTap: _selectPage,
          currentIndex: _selectedTabIndex,
          selectedFontSize: 15,
          selectedItemColor: Color(Colors.blue.value),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_football), label: 'All Teams'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My Team')
          ]),
    );
  }
}
