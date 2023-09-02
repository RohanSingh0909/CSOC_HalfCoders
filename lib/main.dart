import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Constellations and Events',
      home: MyHomePage(),
    );
  }
}

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
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: showConstellations ? 200 : 0,
            curve: Curves.easeInOut,
            child: CalendarSection(
              title: 'Constellations Calendar',
              content: ConstellationsContent(),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: showConstellations ? 0 : 200,
            curve: Curves.easeInOut,
            child: CalendarSection(
              title: 'Astronomical Events Calendar',
              content: AstronomicalEventsContent(),
            ),
          ),
          ElevatedButton(
            onPressed: toggleSection,
            child: Text(showConstellations ? 'Show Astronomical Events' : 'Show Constellations'),
          ),
        ],
      ),
    );
  }
}

class CalendarSection extends StatelessWidget {
  final String title;
  final Widget content;

  CalendarSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: content,
          ),
        ),
      ],
    );
  }
}

class ConstellationsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Constellations content goes here',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class AstronomicalEventsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Astronomical events content goes here',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
