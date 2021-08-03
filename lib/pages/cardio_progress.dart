import 'package:flutter/material.dart';
import 'package:dicoding_submission_flutter/constants.dart';

class Cardiopage extends StatefulWidget {
  static const id = 'cardio_progress';

  @override
  _CardiopageState createState() => _CardiopageState();
}

class _CardiopageState extends State<Cardiopage> {
  bool _cardio1check = false;
  bool _cardio2check = false;
  bool _cardio3check = false;
  int _cardioMarked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          'Cardio Progress Guideline',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          ListTile(
            leading: Checkbox(
              value: _cardio1check,
              onChanged: (bool value) {
                setState(() {
                  _cardio1check = value;
                  if (_cardio1check == true) {
                    _cardioMarked++;
                  } else {
                    _cardioMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Treadmill Exercise Run with Incline 6 for 15 minutes',
              style: kCheckboxTextStyling,
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: _cardio2check,
              onChanged: (bool value) {
                setState(() {
                  _cardio2check = value;
                  if (_cardio2check == true) {
                    _cardioMarked++;
                  } else {
                    _cardioMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Jog for 30 minutes',
              style: kCheckboxTextStyling,
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: _cardio3check,
              onChanged: (bool value) {
                setState(() {
                  _cardio3check = value;
                  if (_cardio3check == true) {
                    _cardioMarked++;
                  } else {
                    _cardioMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Walk for 45 minutes',
              style: kCheckboxTextStyling,
            ),
          ),
          Text(
            '$_cardioMarked Task completed',
            style: kCheckboxTextStyling,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, _cardioMarked);
            },
            child: Text('Back to Front Page'),
          ),
        ],
      ),
    );
  }
}
