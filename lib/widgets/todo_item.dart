import 'package:flutter/material.dart';
import 'package:mypass_sdk/utilities.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem({this.assetPath, this.text, this.action});

  final String assetPath;
  final String text;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: ImageIcon(AssetImage(assetPath),
          //color: hexToColor('#e12f81'), size: 40),
      height: 30,
      minWidth: 50,
      onPressed: () {
        action(context);
      },
      label: Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
