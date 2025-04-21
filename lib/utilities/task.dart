class Task {
  final String taskName;
  bool isCompleted;

  Task({required this.taskName, this.isCompleted = false});

  void toggleDone(){
    isCompleted = !isCompleted;
  }
}