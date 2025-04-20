import 'package:flutter/material.dart';
import 'package:todo/components/tasklists.dart';
import 'package:todo/utilities/constants.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  Widget buildBottomSheet(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 101, 67),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            spacing: 10,
            children: [
              IconButton(
                onPressed: Navigator.of(context).pop,
                icon: Icon(Icons.close, size: 32, color: kThemeColorSub),
              ),
              Text(
                "Task Name",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: kThemeColorSub,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 300, height: 300, child: Image.asset("asset/todo.png")),
        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Enter your task...'),
              ),
              SizedBox(height: 30),
              FilledButton(
                onPressed: () {
                  print("Do someting");
                },
                style: FilledButton.styleFrom(
                  backgroundColor: kThemeColorMain,
                  foregroundColor: kThemeColorSub,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(200, 40),
                ),
                child: Text(
                  "Add Task",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColorMain,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
            enableDrag: true,
            isDismissible: true,
            useSafeArea: true,
            isScrollControlled: true,
            context: context,
            builder: buildBottomSheet,
          );
        },
        backgroundColor: kThemeColorMain,
        child: Icon(Icons.add, size: 32, color: kThemeColorSub),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 100,
              left: 30,
              right: 30,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kThemeColorSub,
                      ),
                      child: Icon(Icons.list, size: 32, color: kThemeColorMain),
                    ),
                    Text(
                      "To Do",
                      style: TextStyle(
                        color: kThemeColorSub,
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
