import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ConstellationsContent extends StatefulWidget {
  @override
  State<ConstellationsContent> createState() => _ConstellationsContentState();
}

class _ConstellationsContentState extends State<ConstellationsContent> {
  // DateTime today = DateTime.now();
  // void _onDaySelected(DateTime day, DateTime focusedDay){
  //   setState(() {
  //     today = day;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 97, 176),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: TableCalendar(
          rowHeight: 43,
          headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
          availableGestures: AvailableGestures.all,
        // selectedDayPredicate: (day) => isSameDay(day, today),
        focusedDay: DateTime.now(), 
        firstDay: DateTime.utc(2010, 10, 16), 
        lastDay: DateTime.utc(2030, 3, 14),
        // onDaySelected: _onDaySelected,
       ),
      ),
    );
  }
}