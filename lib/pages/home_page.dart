import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work_out_app/data/workout_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final newWorkoutNameController = TextEditingController();
  //create new workout
  void createNewWorkout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('create new workout'),
        content: TextField(
          controller: newWorkoutNameController,
        ),
        actions: [
          //save buttons
          MaterialButton(
            onPressed: save,
            child: const Text('Save'),
          
          ),
          // cancel Button
          MaterialButton(
            onPressed: cancel,
            child: const Text('Cancel'),
          )
        ],
      ),
    );
  }

  void save() {
    //get workout name from text controller

    //add workout to workoutdata list
  }

  void cancel() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("M & B Fitness Cenda")),
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
