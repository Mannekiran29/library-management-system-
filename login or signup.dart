import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginOrSignUp extends StatefulWidget {
  @override
  _LoginOrSignUpState createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 110.0, 10.0, 0.0),
                child: Text('College',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 180.0, 10.0, 0.0),
                child: Text('Library',
                    style:
                        TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(235.0, 185.0, 10.0, 0.0),
                child: Text('.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
              )
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.green)
                      )
                    )),
                SizedBox(
                  height: 20.0),
                TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:Colors.green)
                        )
                    ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top:15.0,left: 20.0),
                  child: InkWell(
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Montserrat',
                        decoration: TextDecoration.underline
                      ),
                    ),

                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child:Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color:Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox( height:20.0 ),
                Container(
                height: 40.0,
                  color:Colors.transparent,
                  child:Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('fb.png')),
                        ),
                        SizedBox(width: 10.0),
                        Center(
                          child:Text('Log in with facebook ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                          ),),
                        )
                      ],
                    ),
                  )
                )

              ],
            )),
        SizedBox(height: 20.0),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'New to College Library App ?',
               style: TextStyle(
                 fontFamily: 'Montserrat'
               ),
             ),
             SizedBox(width: 5.0),
             InkWell(
               onTap: (){
                 Navigator.of(context).pushNamed('/signup');
               },
               child: Text('Register',
               style: TextStyle(
                 color: Colors.green,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.bold,
                 decoration: TextDecoration.underline

               ),),
             )
           ],
         )
      ],
    ));
  }
}
