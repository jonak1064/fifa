import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});
  @override
  Widget build(context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/teams-1.png',
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select'),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/teams-2.png',
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select'),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/teams-3.png',
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select'),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/teams-4.png',
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select'),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/teams-5.png',
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select'),
            ),
          ],
        ),
      ],
    );
  }
}
