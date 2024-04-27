import 'package:fifa/screens/all_teams.dart';
import 'package:fifa/screens/my_team.dart';
import 'package:flutter/material.dart';
import 'package:fifa/model/team.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedTabIndex = 0;

  List<Team> group1 = [];
  List<Team> group2 = [];
  List<Team> group3 = [];
  List<Team> group4 = [];
  List<Team> group5 = [];
  List<Team> group6 = [];
  List<Team> group7 = [];
  List<Team> group8 = [];

  void _selectPage(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  void addTeamToGroup(Team team, int groupNumber) {
    if (isTeamInAnyGroup(team)) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Team already added to a group'),
        ),
      );
      return;
    }

    switch (groupNumber) {
      case 1:
        if (group1.length < 8) {
          group1.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group1, 1);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 1 is full'),
            ),
          );
        }
        break;
      case 2:
        if (group2.length < 8) {
          group2.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group2, 2);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 2 is full'),
            ),
          );
        }
        break;
      case 3:
        if (group3.length < 8) {
          group3.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group3, 3);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 3 is full'),
            ),
          );
        }
        break;
      case 4:
        if (group4.length < 8) {
          group4.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group4, 4);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 4 is full'),
            ),
          );
        }
        break;
      case 5:
        if (group5.length < 8) {
          group5.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group5, 5);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 5 is full'),
            ),
          );
        }
        break;
      case 6:
        if (group6.length < 8) {
          group6.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group6, 6);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 6 is full'),
            ),
          );
        }
        break;
      case 7:
        if (group7.length < 8) {
          group7.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group7, 7);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 7 is full'),
            ),
          );
        }
        break;
      case 8:
        if (group8.length < 8) {
          group8.add(team);
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          showAddedSnackBar(team, group8, 8);
        } else {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Group 8 is full'),
            ),
          );
        }
        break;
    }
  }

  void showAddedSnackBar(Team team, List<Team> group, int groupNumber) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${team.name} added to Group $groupNumber'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            group.remove(team);
          },
        ),
      ),
    );
  }

  bool isTeamInAnyGroup(Team team) {
    bool isTeamAdded = group1.contains(team) ||
        group2.contains(team) ||
        group3.contains(team) ||
        group4.contains(team) ||
        group5.contains(team) ||
        group6.contains(team) ||
        group7.contains(team) ||
        group8.contains(team);

    if (isTeamAdded) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Team already added to a group'),
        ),
      );
    }

    return isTeamAdded;
  }

  List<Team> getGroupByNumber(int groupNumber) {
    switch (groupNumber) {
      case 1:
        return group1;
      case 2:
        return group2;
      case 3:
        return group3;
      case 4:
        return group4;
      case 5:
        return group5;
      case 6:
        return group6;
      case 7:
        return group7;
      case 8:
        return group8;
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = AllTeamScreen(
      addTeamToGroup: addTeamToGroup,
    );

    if (_selectedTabIndex == 1) {
      activeScreen = MyTeamScreen(
        groups: [
          group1,
          group2,
          group3,
          group4,
          group5,
          group6,
          group7,
          group8,
        ],
        getGroupByNumber: getGroupByNumber,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fifa App by Jonak"),
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
            icon: Icon(Icons.sports_football),
            label: 'All Teams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'My Team',
          )
        ],
      ),
    );
  }
}
