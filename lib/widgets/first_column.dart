import 'package:fifa/data/dummy_data.dart';
import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});

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
                      value: 'Team 1',
                      child: Text('Team 1'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 2',
                      child: Text('Team 2'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 3',
                      child: Text('Team 3'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 4',
                      child: Text('Team 4'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 5',
                      child: Text('Team 5'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 6',
                      child: Text('Team 6'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 7',
                      child: Text('Team 7'),
                    ),
                    const PopupMenuItem(
                      value: 'Team 8',
                      child: Text('Team 8'),
                    ),
                  ],
                  onSelected: (value) {
                    switch (value) {
                      case 'Team 1':
                        break;
                      case 'Team 2':
                        break;
                      case 'Team 3':
                        break;
                      case 'Team 4':
                        break;
                      case 'Team 5':
                        break;
                      case 'Team 6':
                        break;
                      case 'Team 7':
                        break;
                      case 'Team 8':
                        break;
                    }
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
