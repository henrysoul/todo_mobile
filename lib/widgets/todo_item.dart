import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  final todoItem;
  TodoItem(this.todoItem);
  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.check_box_outline_blank,
          color: Theme.of(context).primaryColor,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            widget.todoItem,
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
