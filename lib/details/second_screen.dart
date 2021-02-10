import 'package:flutter/material.dart';
import 'details_screen.dart';

class SecondScreen extends StatelessWidget {
  final String itemDesc;

  SecondScreen(this.itemDesc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemDesc),
      ),
      body: DetailsScreen(),
    );
  }
}
