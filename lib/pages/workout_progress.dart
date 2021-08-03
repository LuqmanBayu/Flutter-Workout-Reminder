import 'package:flutter/material.dart';

import 'package:dicoding_submission_flutter/constants.dart';

class Workoutpage extends StatefulWidget {
  static const id = 'workout_page';
  @override
  _WorkoutpageState createState() => _WorkoutpageState();
}

class _WorkoutpageState extends State<Workoutpage> {
  bool _workout1check = false;
  bool _workout2check = false;
  bool _workout3check = false;
  int _workoutMarked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          'Weightlifting Progress Guideline',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          ListTile(
            leading: Checkbox(
              value: _workout1check,
              onChanged: (bool value) {
                setState(() {
                  _workout1check = value;
                  if (_workout1check == true) {
                    _workoutMarked++;
                  } else {
                    _workoutMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Lift barbell each of 10kg',
              style: kCheckboxTextStyling,
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: _workout2check,
              onChanged: (bool value) {
                setState(() {
                  _workout2check = value;
                  if (_workout2check == true) {
                    _workoutMarked++;
                  } else {
                    _workoutMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Bicep curls 3 sets with 10 reps each',
              style: kCheckboxTextStyling,
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: _workout3check,
              onChanged: (bool value) {
                setState(() {
                  _workout3check = value;
                  if (_workout3check == true) {
                    _workoutMarked++;
                  } else {
                    _workoutMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Pull up 4 sets 8 reps each',
              style: kCheckboxTextStyling,
            ),
          ),
          Text(
            '$_workoutMarked Task completed',
            style: kCheckboxTextStyling,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, _workoutMarked);
            },
            child: Text('Back to Front Page'),
          )
        ],
      ),
    );
  }
}
