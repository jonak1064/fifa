import 'package:fifa/widgets/first_column.dart';
import 'package:flutter/material.dart';
import 'package:fifa/screens/tabs.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: TabsScreen(),
      ),
    ),
  );
}
