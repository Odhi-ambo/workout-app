import 'package:flutter/material.dart';
import 'package:work_out_app/model/exercise.dart';
import 'package:work_out_app/model/workout.dart';

class WorkoutData extends ChangeNotifier {
  /*
Workout data structure

  */
  List<Workout> workoutList = [
    //default workout
    Workout(
      name: "Upper Body",
      exercises: [
        Exercise(name: "Bicep curls", weight: "20", reps: "12", sets: "5"),
      ],
    ),
  ];
  //get workoutlist
  List<Workout> getWorkoutList() {
    return workoutList;
  }

  //get length of a given workout
  int numberOfExercisesInWorkout(String workoutName) {
    Workout relevantWorkout = getRelevantWorkout(workoutName);

    return relevantWorkout.exercises.length;
  }

  //add a workout
  void addWorkout(String name) {
    //add a new workout
    workoutList.add(Workout(name: name, exercises: []));
    notifyListeners();
  }

  //add an exercise to a workout
  void addExercise(String workoutName, String exerciseName, String weight,
      String reps, String sets) {
    //find the relevant workout
    Workout relevantWorkout = getRelevantWorkout(workoutName);
    relevantWorkout.exercises.add(
        Exercise(name: exerciseName, weight: weight, sets: sets, reps: reps));

    notifyListeners();
  }

  //check off exercise
  void checkOffExercise(String workoutName, String exerciseName) {
    //find the relevant workout and relevant exercise
    Exercise relevantExercise = getRelevantExercise(workoutName, exerciseName);

    //check boolean to show user completed exercise
    relevantExercise.isCompleted = !relevantExercise.isCompleted;
  }
  //get length of a given workout

  //return relevant workout object, given a workout name
  Workout getRelevantWorkout(String workoutName) {
    Workout relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutName);
    return relevantWorkout;
  }

  //return relevant exercise object given wn+exn
  Exercise getRelevantExercise(String workName, String exerciseName) {
    //find relevant workout first
    Workout relevantWorkout = getRelevantWorkout(workName);
    //then find relevant exercise
    Exercise relevantExercise = relevantWorkout.exercises
        .firstWhere((exercise) => exercise.name == exerciseName);

    return relevantExercise;
  }
}
