import 'package:work_out_app/model/exercise.dart';
import 'package:work_out_app/model/workout.dart';

class WorkoutData {
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

  //add a workout
  void addWorkout(String name) {
    //add a new workout
    workoutList.add(Workout(name: name, exercises: []));
  }

  //add an exercise to a workout
  void addExercise(String workoutName, String exerciseName, String weight,
      String reps, String sets) {
    //find the relevant workout
    Workout relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutName);

    relevantWorkout.exercises.add(
        Exercise(name: exerciseName, weight: weight, sets: sets, reps: reps));
  }

  //check off exercise
  void checkOffExercise(String workoutName, String exerciseName) {
    //find the relevant workout and relevant exercise
  }
  //get length of a given workout

  //return relevant workout object, given a workout name
  Workout getRelevantWorkout(String workoutName) {
    Workout relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutName);
    return relevantWorkout;
  }

  //return relevant exercise object given wn+exn
}
