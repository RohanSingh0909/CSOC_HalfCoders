
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'calender.dart';
import 'const_events.dart';
class ConstellationsSection extends StatefulWidget {
  @override
  State<ConstellationsSection> createState() => _ConstellationsSectionState();
}

class _ConstellationsSectionState extends State<ConstellationsSection> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey<bool>(true), // Key for AnimatedSwitcher
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CalendarSection(
            title: 'Constellations Calendar',
            content: ConstellationsContent(),
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
            ),
          ),
        ],
      ),
    );
  }
}