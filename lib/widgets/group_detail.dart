import 'package:flutter/material.dart';
import 'package:fifa/model/team.dart';

class GroupDetailScreen extends StatelessWidget {
  final int groupNumber;
  final List<Team> group;

  const GroupDetailScreen({
    super.key,
    required this.groupNumber,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group $groupNumber'),
      ),
      body: group.isEmpty
          ? const Center(
              child: Text('No teams added'),
            )
          : ListView.builder(
              itemCount: group.length,
              itemBuilder: (context, index) {
                final team = group[index];
                return ListTile(
                  leading: Image.asset(
                    team.imageUrl,
                    width: 40,
                    height: 40,
                  ),
                  title: Text(team.name),
                  trailing: Text('Rank: ${team.rank}'),
                );
              },
            ),
    );
  }
}
