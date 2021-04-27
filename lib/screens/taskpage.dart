import 'package:flutter/material.dart';
import 'package:todoapp/screens/testing.dart';

class taskpage extends StatefulWidget {
  @override
  _taskpageState createState() => _taskpageState();
}

class _taskpageState extends State<taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 6,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image(
                              image: AssetImage('assets/back_arrow_icon.png'),
                          ),
                        ),
                      ),
                      Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Task Title',
                            ),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Color(0xFF231551),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Description for the Task',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                    ),
                  ),
                ),
                TodoWidget(
                  text: 'create your first task ',
                  isdone: true,
                ),
                TodoWidget(
                  text: 'create your first Todo as well',
                  isdone: true,
                ),
                TodoWidget(
                  isdone: false,
                ),
                TodoWidget(
                  isdone: false,
                ),
              ],
            ),
              Positioned(
                bottom: 24.0,
                right: 24.0,
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
                      color:  Colors.redAccent.shade400,
                    ),
                    child: Image(
                      image: AssetImage('assets/delete_icon.png'),
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
