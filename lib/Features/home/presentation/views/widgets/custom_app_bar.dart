import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    {List<Widget>? actions, required Widget title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: title,
    actions: actions,
  );
}