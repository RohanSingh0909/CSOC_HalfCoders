
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'astro_events.dart';
import 'calender.dart';
class AstronomicalEventsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey<bool>(false), // Key for AnimatedSwitcher
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CalendarSection(
            title: 'Astronomical Events Calendar',
            content: AstronomicalEventsContent(),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 97, 176),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: TableCalendar(
                     focusedDay: DateTime.now(), 
                     firstDay: DateTime.utc(2010, 10, 16), 
                     lastDay: DateTime.utc(2030, 3, 14))
              ),
            ),
          ),
        ],
      ),
    );
  }
}