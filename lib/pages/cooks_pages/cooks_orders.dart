import 'package:flutter/material.dart';

class cooks_orders extends StatefulWidget {
  const cooks_orders({Key? key}) : super(key : key);

  @override
  State<cooks_orders> createState() => _cooks_orders_state();
}

class _cooks_orders_state extends State<cooks_orders>{

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