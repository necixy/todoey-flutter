import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF6F4B2E),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFf0f0f0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: kColorPrimary,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(fontSize: 24, color: kColorPrimary),
                textAlign: TextAlign.center,
                autofocus: true,
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {},
                child: Text('Add',
                    style: TextStyle(color: kColorText, fontSize: 20)),
                color: kColorPrimary,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
