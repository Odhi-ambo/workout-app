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
  void addExercise(String workoutName, String exerciseName){}

}
