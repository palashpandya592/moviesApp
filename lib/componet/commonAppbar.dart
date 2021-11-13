import 'package:flutter/material.dart';

Widget customAppbar({
  String title,
  Function onPress,
}) {
  return AppBar(
    title: Text(
      title,
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: onPress,
    ),
  );
}
