import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen()),
                  ));
        },
        child: Icon(Icons.add),
        backgroundColor: kColorPrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 30,
              bottom: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () => print('ok'),
                  child: CircleAvatar(
                    backgroundColor: kColorText,
                    radius: 40,
                    child: Icon(
                      Icons.list,
                      color: Colors.black,
                      size: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50,
                      color: kColorText,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: kColorText,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 300,
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: kColorSecondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
