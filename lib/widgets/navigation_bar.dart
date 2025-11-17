

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

BottomNavigationBar navigationBar(int index, BuildContext context) {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.business_center), label: "Bank"),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
    ],
    currentIndex: index,
    onTap: (int index) {
      switch (index) {
        case 0:
          context.go('/main');
          break;

        case 1:
          context.go('/bank');
          break;

        case 2:
          context.go('/settings');
          break;

        default:
          break;
      }
    },
    selectedItemColor: Colors.redAccent,
  );
}