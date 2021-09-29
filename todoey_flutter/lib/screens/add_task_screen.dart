import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);
  

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      height: MediaQuery.of(context).size.height * 0.23,
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          right: 23,
          left: 23,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: kTextFieldStyle,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                } ,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
