import 'package:flutter/material.dart';

class waiters_home extends StatefulWidget {
  const waiters_home({Key? key}) : super(key: key);

  @override
  State<waiters_home> createState() => _waiters_home_state();
}

class _waiters_home_state extends State<waiters_home>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 244, 255,1.8),
      appBar: AppBar(
        title: Text(
          "BistroBook",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color:  Color.fromRGBO(236, 244, 255,1.8)
          ),
        ),
        backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[

              Row(
                children: [

                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color:  Color.fromRGBO(236, 244, 255,1.8)
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color:  Color.fromRGBO(236, 244, 255,1.8)
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color:  Color.fromRGBO(236, 244, 255,1.8)
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                    ),
                  ),

                ],
              ),

              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color:  Color.fromRGBO(236, 244, 255,1.8)
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color:  Color.fromRGBO(236, 244, 255,1.8)
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color:  Color.fromRGBO(236, 244, 255,1.8)
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
