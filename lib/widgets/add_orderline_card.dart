import 'package:flutter/material.dart';

class add_orderline_card extends StatefulWidget {

  final String name;
  final int id;
  final bool isSelected;
  final VoidCallback onSelect;

  static int? selectedId;

  add_orderline_card({
    required this.name,
    required this.id,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  State<add_orderline_card> createState() => _add_orderline_card(id: id, name: name);
}
class _add_orderline_card extends State<add_orderline_card> {
  String name;
  int? id;

  _add_orderline_card({required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    bool isChecked = add_orderline_card.selectedId == widget.id;
    return SizedBox(
      width: 350,
      height: 110,
      child: Card(
        color: Color.fromRGBO(80, 200, 120, 1.0),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 60,
                  child: Card(
                    color: Colors.green[900],
                    child: Center(
                      child: Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 28, 30, 0),
                  child: Checkbox(
                    value: widget.isSelected,
                    onChanged: (_) => widget.onSelect(),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}