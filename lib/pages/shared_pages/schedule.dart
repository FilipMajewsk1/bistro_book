import 'package:flutter/material.dart';

class schedule extends StatefulWidget {
  const schedule({Key? key}) : super(key : key);

  @override
  State<schedule> createState() => _schedule_state();
}

class _schedule_state extends State<schedule>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(236, 244, 255, 1.0),
        appBar: AppBar(
          title: Text(
            "BistroBook",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color:  Color.fromRGBO(255, 255, 255,1.0)
            ),
          ),
          backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
        ),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Column(
                children: <Widget>[

                  Row(
                    children: [

                    ],

                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}