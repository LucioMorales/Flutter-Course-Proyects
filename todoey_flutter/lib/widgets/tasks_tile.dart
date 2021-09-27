import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'test',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckBoxState: (bool? checkBoxState) {
          setState(() {
            isChecked = checkBoxState ?? true;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final void Function(bool?) toggleCheckBoxState;

  TaskCheckBox({required this.checkBoxState, required this.toggleCheckBoxState}); //changes the value of the variable

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
