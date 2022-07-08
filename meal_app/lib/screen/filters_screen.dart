// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FlitersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('filters'),
      ),
    );
  }
}
