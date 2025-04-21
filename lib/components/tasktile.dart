import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
  });

  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
      title: Text(
        taskTitle,
        style: isChecked
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
    );
  }
}
