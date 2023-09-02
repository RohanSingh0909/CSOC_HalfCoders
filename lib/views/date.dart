import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateNoteSection extends StatefulWidget {
  @override
  _DateNoteSectionState createState() => _DateNoteSectionState();
}

class _DateNoteSectionState extends State<DateNoteSection> {
  // Initialize currentDate with the current date
  DateTime currentDate = DateTime.timestamp();

  @override
  Widget build(BuildContext context) {
    // Format the current date
    String cal =
        '${currentDate.day}/${currentDate.month}/${currentDate.year}';

    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(height: 8),
          Text(
            ' $cal is a special day with a meteor shower visible in the night sky. Be sure to watch it!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
