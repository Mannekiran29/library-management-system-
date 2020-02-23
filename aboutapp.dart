import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AboutApp'),
      ),
      body: Material(child :
      Text("Library Management Application helps you to manage your books effectively! \n It allows you to manage your personal library.\n Features include: \n Renew Option \n Searching \n Book images with index \n Availability of the book \n Keep a track of books that you borrow \n Notify when a book is overdue\n Sorting by title,Author,description and index",
        style: TextStyle(
            color: Colors.grey[800],
            fontStyle: FontStyle.italic,
            fontSize: 18),

      ),),
    );
  }
}
