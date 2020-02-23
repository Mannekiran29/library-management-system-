import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchAppBar(),
    );
  }
}

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = new Text('College Library');
  Icon actionIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: appBarTitle,
          actions: <Widget>[
            new IconButton(
                icon: actionIcon,
                onPressed: () {
                  setState(() {
                    if (this.actionIcon.icon == Icons.search) {
                      this.actionIcon = new Icon(Icons.close);

                      this.appBarTitle = new TextField(
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                        decoration: new InputDecoration(
                          prefixIcon:
                              new Icon(Icons.search, color: Colors.white),
                          hintText: "Search by book_name",
                          hintStyle: new TextStyle(color: Colors.white70),
                        ),
                      );
                    } else {
                      this.actionIcon=new Icon(Icons.search);
                      this.appBarTitle=new Text("College Library");
                    }
                  });
                }),
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            new Center(
                child: Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(Icons.menu)))
          ],
        )),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "PicsArt_02-23-05.21.36.jpg",
              fit: BoxFit.cover,
            )
          ],
        ));
  }
}
