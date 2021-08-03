import 'package:dicoding_submission_flutter/pages/cardio_progress.dart';
import 'package:dicoding_submission_flutter/pages/front_page.dart';
import 'package:dicoding_submission_flutter/pages/workout_progress.dart';
import 'package:dicoding_submission_flutter/pages/yoga_progress.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int cardioMarked;
  int workoutMarked;
  int yogaMarked;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplikasi submission',
      debugShowCheckedModeBanner: false,
      initialRoute: Homepage.id,
      routes: {
        Homepage.id: (context) => Homepage(),
        Cardiopage.id: (context) => Cardiopage(),
        Workoutpage.id: (context) => Workoutpage(),
        Yogapage.id: (context) => Yogapage(),
      },
    );
  }
}
