import 'package:flutter/material.dart';

//Pages
import './LoginOrSignUp.dart';
import './Mybooks.dart';
import './AboutApp.dart';
import './signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: <String,WidgetBuilder>{
        '/signup':(BuildContext context) => new SignUp()
     },
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
                        prefixIcon: new Icon(Icons.search, color: Colors.white),
                        hintText: "Search by book_name",
                        hintStyle: new TextStyle(color: Colors.white70),
                      ),
                    );
                  } else {
                    this.actionIcon = new Icon(Icons.search);
                    this.appBarTitle = new Text("College Library");
                  }
                });
              }),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('user name:'),
            accountEmail: new Text('user mail:'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(''),
            ),
          ),
          new ListTile(
              title: new Text("Login / SignUp"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new LoginOrSignUp()));
              }),
          new Divider(
            color: Colors.black,
            height: 5.0,
          ),
          new ListTile(
            title: new Text("My book's"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new Mybooks()));
            },
          ),
          new Divider(
            color: Colors.black,
            height: 5.0,
          ),
          new ListTile(
            title: new Text("AboutApp   "
                " "),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutApp()));
            },
          ),
          new Divider(
            color: Colors.black,
            height: 5.0,
          ),
        ],
      )),
      body: ListView(
        children: <Widget>[
          Image.asset(
            "PicsArt_02-23-05.21.36.jpg",
            fit: BoxFit.cover,
          ),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "Bio Medical Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "Computer Science and Programming  Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "Electronics and Communication  Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "EV(Electronics and Video) Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "Embedded Systems Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "Industrial Electronics Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "Civil Engineering Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
          new Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
              onPressed: () {},
              child: Text(
                "General Books",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(7, 5, 7, 4)),
        ],
      ),
    );
  }
}
