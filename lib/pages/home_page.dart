import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_out_app/data/workout_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //create new workout
  void createNewWorkout() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('create new workout'),
            ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Workout Tracker"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewWorkout,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: value.getWorkoutList().length,
          itemBuilder: (context, index) => ListTile(
            title: Text(value.getWorkoutList()[index].name),
          ),
        ),
      ),
    );
  }
}
