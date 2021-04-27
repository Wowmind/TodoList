import 'package:flutter/material.dart';
import 'package:todoapp/screens/taskpage.dart';
import 'package:todoapp/screens/testing.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          color: Color(0xfff6f6f6),
          child: Stack(
            children: [
                 Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 25, top: 12.0),
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
               Expanded(
                   child: ListView(
                 children: [
                   testing(
                     tittle: 'Getting Started',
                     desc: 'Hello Users, Welcome to WHAT_TODO app, this is a default task that you can edit or delete on the app',
                   ),
                   testing(),
                   testing(),
                   testing(),
                   testing(),
                   testing(),
                 ],
               ))

              ],
            ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => taskpage()));
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color:  Color(0xFF7345FE),
                    ),
                    child: Image(
                      image: AssetImage('assets/add_icon.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
