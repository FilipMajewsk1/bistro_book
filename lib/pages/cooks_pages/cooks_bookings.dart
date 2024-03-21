import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class cooks_bookings extends StatefulWidget {
  const cooks_bookings({Key? key}) : super(key : key);

  @override
  State<cooks_bookings> createState() => _cooks_bookings_state();
}

class _cooks_bookings_state extends State<cooks_bookings>{

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

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
                                  DataColumn(label: Text('Hour')),
                                  DataColumn(label: Text('Name')),
                                  DataColumn(label: Text('Table')),
                                  DataColumn(label: Text('Size')),
                                  DataColumn(label: Text('Delete')),
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



                ],
              ),
            ),
          ),
        )
    );
  }
}