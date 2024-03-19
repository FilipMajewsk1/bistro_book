import 'package:flutter/material.dart';

class cooks_home extends StatefulWidget {
  const cooks_home({Key? key}) : super(key: key);

  @override
  State<cooks_home> createState() => _cooks_home_state();
}

class _cooks_home_state extends State<cooks_home>{

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
