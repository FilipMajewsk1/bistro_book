import 'package:flutter/material.dart';

class waiters_bookings extends StatefulWidget {
  const waiters_bookings({Key? key}) : super(key : key);

  @override
  State<waiters_bookings> createState() => _waiters_bookings_state();
}

class _waiters_bookings_state extends State<waiters_bookings>{

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