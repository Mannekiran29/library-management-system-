import 'package:flutter/material.dart';

class Mybooks extends StatefulWidget {
  @override
  _MybooksState createState() => _MybooksState();
}

class _MybooksState extends State<Mybooks> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Mybooks'),
      ),
    );
  }
}
