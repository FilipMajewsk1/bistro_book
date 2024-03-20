import 'package:flutter/material.dart';

class add_storage_raport extends StatefulWidget {
  const add_storage_raport({Key? key}) : super(key : key);

  @override
  State<add_storage_raport> createState() => _add_storage_raport_state();
}

class _add_storage_raport_state extends State<add_storage_raport>{

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