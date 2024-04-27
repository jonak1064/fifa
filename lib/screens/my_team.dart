import 'package:flutter/material.dart';

class MyTeamSceeen extends StatelessWidget {
  const MyTeamSceeen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Team'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: const [
          Text('Team 1'),
          Text('Team 2'),
          Text('Team 3'),
          Text('Team 4'),
          Text('Team 5'),
          Text('Team 6'),
          Text('Team 7'),
          Text('Team 8'),
        ],
      ),
    );
  }
}
