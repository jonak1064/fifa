import 'package:flutter/material.dart';
import 'package:fifa/model/team.dart';
import 'package:fifa/widgets/first_column.dart';

class AllTeamScreen extends StatelessWidget {
  final Function(Team, int) addTeamToGroup;

  const AllTeamScreen({super.key, required this.addTeamToGroup});

  @override
  Widget build(BuildContext context) {
    return FirstColumn(addTeamToGroup: addTeamToGroup);
  }
}
