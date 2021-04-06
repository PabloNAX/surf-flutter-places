import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('title appbar'),
      ),
      body: Center(
        child: Text(
          'Inside body',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
