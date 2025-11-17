

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Color.fromARGB(255, 73, 33, 33)),
          child: Image(image: AssetImage("lib/assets/images/logo.png"), width: 180, height: 100),
        ),
        ListTile(
          title: const Text('Homepage'),
          onTap: () {
            context.go('/main');
          }
        ),

      ],
    )
  );
}