import 'package:flutter/material.dart';
import 'package:todo/components/tasktile.dart';
import 'package:todo/utilities/constants.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20),
      children: [
        Text(
          '0 Task',
          style: TextStyle(
            color: kThemeColorMain,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}