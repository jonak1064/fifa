import 'package:flutter/material.dart';
import 'package:fifa/widgets/group_detail.dart';
import 'package:fifa/model/team.dart';

class MyTeamScreen extends StatelessWidget {
  final List<List<Team>> groups;
  final List<Team> Function(int) getGroupByNumber;

  const MyTeamScreen({
    super.key,
    required this.groups,
    required this.getGroupByNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Team'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: groups.length,
          itemBuilder: (context, index) {
            final group = groups[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupDetailScreen(
                      groupNumber: index + 1,
                      group: group,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 230, 248),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Group ${index + 1}'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
