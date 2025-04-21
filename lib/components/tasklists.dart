import 'package:flutter/material.dart';
import 'package:todo/components/tasktile.dart';
import 'package:todo/utilities/constants.dart';
import 'package:todo/utilities/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskArray;
  final Function(int) toggleTask;

  const TaskList({
    super.key,
    required this.taskArray,
    required this.toggleTask,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20),
      children: [
        Text(
          '${widget.taskArray.length} Tasks',
          style: TextStyle(
            color: kThemeColorMain,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: widget.taskArray[index].isCompleted,
              taskTitle: widget.taskArray[index].taskName,
              checkBoxCallBack: (checkboxSate) {
                setState(() {
                  widget.taskArray[index].toggleDone();
                });
              },
            );
          },
          itemCount: widget.taskArray.length,
        ),
      ],
    );
  }
}
