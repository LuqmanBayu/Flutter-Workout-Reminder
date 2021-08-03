import 'package:flutter/material.dart';
import 'package:dicoding_submission_flutter/constants.dart';

class Yogapage extends StatefulWidget {
  static const id = 'yoga_page';
  @override
  _YogapageState createState() => _YogapageState();
}

class _YogapageState extends State<Yogapage> {
  bool _yoga1check = false;
  bool _yoga2check = false;
  bool _yoga3check = false;
  int _yogaMarked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          'Yoga Progress Guideline',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          ListTile(
            leading: Checkbox(
              value: _yoga1check,
              onChanged: (bool value) {
                setState(() {
                  _yoga1check = value;
                  if (_yoga1check == true) {
                    _yogaMarked++;
                  } else {
                    _yogaMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Meditate 30 minutes',
              style: kCheckboxTextStyling,
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: _yoga2check,
              onChanged: (bool value) {
                setState(() {
                  _yoga2check = value;
                  if (_yoga2check == true) {
                    _yogaMarked++;
                  } else {
                    _yogaMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Spiritual healing 20 minutes',
              style: kCheckboxTextStyling,
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: _yoga3check,
              onChanged: (bool value) {
                setState(() {
                  _yoga3check = value;
                  if (_yoga3check == true) {
                    _yogaMarked++;
                  } else {
                    _yogaMarked--;
                  }
                });
              },
              activeColor: Colors.lightGreen,
              checkColor: Colors.black,
            ),
            title: Text(
              'Plank',
              style: kCheckboxTextStyling,
            ),
          ),
          Text(
            '$_yogaMarked Task completed',
            style: kCheckboxTextStyling,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, _yogaMarked);
            },
            child: Text('Back to Front Page'),
          ),
        ],
      ),
    );
  }
}
