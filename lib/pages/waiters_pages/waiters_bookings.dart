import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class waiters_bookings extends StatefulWidget {
  const waiters_bookings({Key? key}) : super(key : key);

  @override
  State<waiters_bookings> createState() => _waiters_bookings_state();
}

class _waiters_bookings_state extends State<waiters_bookings>{

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final _dateKey = GlobalKey<FormState>();
  final _hourKey = GlobalKey<FormState>();
  final _nameKey = GlobalKey<FormState>();
  final _tableKey = GlobalKey<FormState>();
  final _sizeKey = GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();
  TextEditingController hourController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController tableController = TextEditingController();
  TextEditingController sizeController = TextEditingController();


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
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[

                Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(150, 0, 70, 0),
                      child: Container(
                        width: 450,
                        height: 400,
                        child: TableCalendar(
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: _focusedDay,
                          calendarFormat: _calendarFormat,
                          headerStyle: HeaderStyle(
                            leftChevronIcon: Icon(Icons.chevron_left, color: Color.fromRGBO(80, 200, 120, 1.0)),
                            rightChevronIcon: Icon(Icons.chevron_right, color: Color.fromRGBO(80, 200, 120, 1.0)),
                            formatButtonTextStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),

                            formatButtonDecoration: BoxDecoration(
                              color: Color.fromRGBO(80, 200, 120, 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          calendarStyle: CalendarStyle(
                            selectedDecoration: BoxDecoration(
                              color: Color.fromRGBO(80, 200, 120, 1.0),
                              shape: BoxShape.circle,
                            ),
                            todayDecoration: BoxDecoration(
                              color: Colors.green[200],
                              shape: BoxShape.circle,
                            ),
                          ),
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            if (!isSameDay(_selectedDay, selectedDay)) {
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                              });
                            }
                          },
                          onFormatChanged: (format) {
                            if (_calendarFormat != format) {
                              setState(() {
                                _calendarFormat = format;
                              });
                            }
                          },
                          onPageChanged: (focusedDay) {
                            _focusedDay = focusedDay;
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 130, 100, 10),
                      child: SizedBox(
                        width: 700,
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
                                DataColumn(label: Text('Hour', textAlign: TextAlign.center,)),
                                DataColumn(label: Text('Name', textAlign: TextAlign.center)),
                                DataColumn(label: Text('Table', textAlign: TextAlign.center)),
                                DataColumn(label: Text('Size', textAlign: TextAlign.center)),
                                DataColumn(label: Text('Delete', textAlign: TextAlign.center)),
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


                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: SizedBox(
                    width: 500,
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
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 500,
                    child: Form(
                      key:_hourKey,
                      child: TextFormField(
                        controller: hourController,
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
                          labelText: 'Hour:',
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
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 500,
                    child: Form(
                      key:_nameKey,
                      child: TextFormField(
                        controller: nameController,
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
                          labelText: 'Name:',
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
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 500,
                    child: Form(
                      key:_tableKey,
                      child: TextFormField(
                        controller: tableController,
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
                          labelText: 'Table:',
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
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 500,
                    child: Form(
                      key:_sizeKey,
                      child: TextFormField(
                        controller: sizeController,
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
                          labelText: 'Size:',
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
                  padding: const EdgeInsets.fromLTRB(300, 5, 0, 50),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add booking",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color:  Color.fromRGBO(255, 255, 255,1.0),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80, 200, 120, 1.0),
                      side: BorderSide(color: Colors.black),
                      fixedSize: Size(200, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
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