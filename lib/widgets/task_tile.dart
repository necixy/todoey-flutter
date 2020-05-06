import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task Title',
        style: TextStyle(
            fontSize: 20,
            color: kColorPrimary,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: TaskCheckbox(
        isChecked: this.isChecked,
        onChanged: (value) => setState(() {
          this.isChecked = value;
        }),
      ),
      onTap: () => setState(() {
        isChecked = !isChecked;
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(
      {@required bool this.isChecked, @required Function this.onChanged});

  final bool isChecked;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kColorPrimary,
      value: isChecked,
      onChanged: (value) => this.onChanged(value),
    );
  }
}
