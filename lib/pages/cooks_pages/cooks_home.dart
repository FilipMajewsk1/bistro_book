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
      backgroundColor: Color.fromRGBO(236, 244, 255,1.0),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Bookings",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color:  Color.fromRGBO(255, 255, 255,1.0)
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                              side: BorderSide(color: Colors.black),
                              fixedSize: Size(250, 155),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Orders",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color:  Color.fromRGBO(255, 255, 255,1.0)
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                              side: BorderSide(color: Colors.black),
                              fixedSize: Size(250, 155),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Schedule",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color:  Color.fromRGBO(255, 255, 255,1.0)
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                              side: BorderSide(color: Colors.black),
                              fixedSize: Size(250, 155),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Shifts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color:  Color.fromRGBO(255, 255, 255,1.0)
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                              side: BorderSide(color: Colors.black),
                              fixedSize: Size(250, 155),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Recipes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color:  Color.fromRGBO(255, 255, 255,1.0)
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                              side: BorderSide(color: Colors.black),
                              fixedSize: Size(250, 155),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Storage",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color:  Color.fromRGBO(255, 255, 255,1.0)
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                              side: BorderSide(color: Colors.black),
                              fixedSize: Size(250, 155),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
