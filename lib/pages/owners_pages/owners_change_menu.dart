import 'package:flutter/material.dart';

class owners_change_menu extends StatefulWidget {
  const owners_change_menu({Key? key}) : super(key : key);

  @override
  State<owners_change_menu> createState() => _owners_change_menu_state();
}

class _owners_change_menu_state extends State<owners_change_menu>{

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