import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class owners_monthly_summary extends StatefulWidget {
  const owners_monthly_summary({Key? key}) : super(key : key);

  @override
  State<owners_monthly_summary> createState() => _owners_monthly_summary_state();
}

class _owners_monthly_summary_state extends State<owners_monthly_summary>{

  final _dateKey = GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();

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

                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 50, 10, 0),
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: Form(
                            key:_dateKey,
                            child: TextFormField(
                              controller: dateController,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 60, 0, 1.0),
                              ),
                              cursorColor: Color.fromRGBO(0, 60, 0, 1.0),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(80, 200, 120, 1.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(80, 200, 120, 1.0), width: 2.0),
                                ),
                                labelText: 'Date:',
                                labelStyle: TextStyle(
                                  color: Color.fromRGBO(0, 60, 0, 1.0),
                                ),
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Field cannot be empty';
                                } else if (1==1) {
                                  return '';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 50, 185, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Enter date",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color:  Color.fromRGBO(255, 255, 255,1.0),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                            side: BorderSide(color: Colors.black),
                            fixedSize: Size(150, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(350, 10, 100, 50),
                    child: SizedBox(
                      width: 800,
                      height: 400,
                      child: SingleChildScrollView(
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              dataTableTheme: DataTableThemeData(
                                headingRowColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states){
                                  return Color.fromRGBO(80, 200, 120, 1.0);
                                }),
                                headingTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),

                              )
                          ),
                          child: DataTable(

                            columns: const [
                              DataColumn(label: Text('Name', textAlign: TextAlign.center)),
                              DataColumn(label: Text('Total hours', textAlign: TextAlign.center)),
                            ],
                            rows: [],
                            // List<DataRow>.generate(
                            //   rezerwacje.length,
                            //       (index) => DataRow(cells: [
                            //     DataCell(Text(rezerwacje[index].godzina)),
                            //     DataCell(Text(rezerwacje[index].nazwisko)),
                            //     DataCell(Text(rezerwacje[index].nazwaStolika)),
                            //     DataCell(Text(rezerwacje[index].wielkoscStolika.toString())),
                            //     DataCell(IconButton(
                            //       icon: Icon(Icons.delete),
                            //       onPressed: () => _usunRezerwacje(index),
                            //     )),
                            //   ]),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}