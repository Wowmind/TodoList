import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testing extends StatelessWidget {
  final String tittle;
  final String desc;
  testing({this.tittle, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            tittle ??'(Unnamed Task)',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF211551),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              desc ??'No description ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF868290),
                height: 1.4,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  String text;
  bool isdone;
  TodoWidget({this.text, @required this.isdone});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
        child: Row(
          children: [
            Container(
              height: 20.0,
              width: 20.0,
              margin: EdgeInsets.only(right: 12.0),
              decoration: BoxDecoration(
                color: isdone ? Color(0xFF7345FE) : Colors.transparent,
                borderRadius: BorderRadius.circular(6.0),
                border: isdone ? null : Border.all(
                  color:  Colors.grey.shade600,
                  width: 1.5
                )
              ),
              child: Image(
                image: AssetImage('assets/check_icon.png'),
              ),
            ),
            Text(
              text ?? 'Unnamed Todo',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: isdone ? FontWeight.bold : FontWeight.w600,
              color: isdone ? Color(0xFF211551): Colors.grey.shade600,
            ),
            ),
          ],
        ),

    );
  }
}

