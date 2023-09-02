import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'astro.dart';
import 'constellations.dart';
import 'date.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showConstellations = true;

  void toggleSection() {
    setState(() {
      showConstellations = !showConstellations;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constellations and Astronomical Events'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: showConstellations
                  ? ConstellationsSection()
                  : AstronomicalEventsSection(),
            ),
          ),
          ElevatedButton(
            onPressed: toggleSection,
            child: Text(showConstellations ? 'Show Astronomical Events' : 'Show Constellations'),
          ),
          SizedBox(height: 16),
          showConstellations
              ? SizedBox() // Empty space when showing Constellations
              : DateNoteSection(), // Show Date Note when showing astronomical avents
        ],
      ),
    );
  }
}