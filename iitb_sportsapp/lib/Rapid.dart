import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RapidPage extends StatefulWidget {
  @override
  _RapidPageState createState() => _RapidPageState();
}

class _RapidPageState extends State<RapidPage> {
  String _responseData = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cricbuzz Cricket'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    fetchCricketScores();
                  },
                  child: Text('Get Live Scores'),
                ),
                SizedBox(height: 20),
                Text(_responseData), // This will display the response data
              ],
            ),
          ),
        ),
      ),
    );
  }

  void fetchCricketScores() async {
  final apiKey = '08556d438cmsh0aa8d16a14b1cb5p1803f1jsn3d3e94e0ad0c';
  final response = await http.get(
    Uri.parse('https://cricbuzz-cricket.p.rapidapi.com/matches/v1/recent'),
    headers: {
      'X-RapidAPI-Key': apiKey,
      'X-RapidAPI-Host': 'cricbuzz-cricket.p.rapidapi.com',
    },
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    setState(() {
      _responseData = data.toString(); // Update the state with response data
    });
    print(data); // Print response data in terminal
  } else {
    // Handle errors
    print('Failed to load cricket scores: ${response.statusCode}');
  }
}
}

