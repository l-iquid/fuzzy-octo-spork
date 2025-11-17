

import 'package:flutter/material.dart';

AppBar appBar(String username) {
  return AppBar(
    title: Text("$username's Account 🏦"),
    backgroundColor: Colors.transparent,
    toolbarHeight: 45,
    animateColor: true,
  );
}