import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/teams-4.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 20),
        const Text(
          'England',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(width: 20),
        const Text('Rank : 4'),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Add'),
        ),
      ],
    );
  }
}
