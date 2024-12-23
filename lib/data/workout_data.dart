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
   
    relevantWorkout.exercises.add(
        Exercise(name: exerciseName, weight: weight, sets: sets, reps: reps));
  }
  //check off exercise
  void checkOffExercise(String workoutName, String exerciseName){
    //find the relevant workout and relevant exercise
    Workout getRelevantWorkout(String workoutName){
      
    }
  }
}
