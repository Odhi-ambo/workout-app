import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_out_app/data/workout_data.dart';
import 'package:work_out_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => WorkoutData(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomePage()
    ));
  }
}
