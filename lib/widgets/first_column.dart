import 'package:flutter/material.dart';
import 'package:fifa/model/team.dart';
import 'package:fifa/data/dummy_data.dart';

class FirstColumn extends StatefulWidget {
  final Function(Team, int) addTeamToGroup;

  const FirstColumn({super.key, required this.addTeamToGroup});

  @override
  State<FirstColumn> createState() => _FirstColumnState();
}

class _FirstColumnState extends State<FirstColumn> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyTeams.length,
      itemBuilder: (ctx, index) {
        final team = dummyTeams[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '${team.rank}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 40),
                    Image.asset(
                      team.imageUrl,
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(team.name),
                        const SizedBox(height: 8.0),
                        Text('Rank: ${team.rank}'),
                      ],
                    ),
                  ],
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text('Group 1'),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('Group 2'),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text('Group 3'),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text('Group 4'),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text('Group 5'),
                    ),
                    const PopupMenuItem(
                      value: 6,
                      child: Text('Group 6'),
                    ),
                    const PopupMenuItem(
                      value: 7,
                      child: Text('Group 7'),
                    ),
                    const PopupMenuItem(
                      value: 8,
                      child: Text('Group 8'),
                    ),
                  ],
                  onSelected: (value) {
                    widget.addTeamToGroup(team, value);
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
