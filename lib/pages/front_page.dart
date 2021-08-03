import 'dart:ui';

import 'package:dicoding_submission_flutter/pages/cardio_progress.dart';
import 'package:dicoding_submission_flutter/pages/workout_progress.dart';
import 'package:dicoding_submission_flutter/pages/yoga_progress.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submission_flutter/constants.dart';
import 'cardio_progress.dart';

class Homepage extends StatefulWidget {
  static const id = 'home_page';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int cardioMarked = 0;
  int workoutMarked = 0;
  int yogaMarked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily Workout Checklist',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 250,
              margin: EdgeInsets.all(20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Cardiopage.id)
                          .then((cardioResult) {
                        setState(() {
                          cardioMarked = cardioResult;
                        });
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lime),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/cardio.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Workoutpage.id)
                          .then((workoutResult) {
                        setState(() {
                          workoutMarked = workoutResult;
                        });
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/workout.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Yogapage.id)
                          .then((yogaResult) {
                        setState(() {
                          yogaMarked = yogaResult;
                        });
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightGreen),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/yoga.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lime,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Cardio progress', style: kCardTextStyling),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$cardioMarked/3',
                    style: kCardTextStyling,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Weightlifting progress', style: kCardTextStyling),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$workoutMarked/3',
                    style: kCardTextStyling,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightGreen,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yoga progress',
                    style: kCardTextStyling,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$yogaMarked/3',
                    style: kCardTextStyling,
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
