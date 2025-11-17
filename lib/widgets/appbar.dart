

import 'package:flutter/material.dart';

AppBar appBar(String username) {
  return AppBar(
    title: Text("$username's Account"),
    backgroundColor: Color.fromARGB(255, 25, 25, 25),
    toolbarHeight: 45,
    animateColor: true,
    leading: Builder(builder: (context) => IconButton(onPressed: () {
      Scaffold.of(context).openDrawer();
    }, icon: Icon(Icons.menu))),
  );
}