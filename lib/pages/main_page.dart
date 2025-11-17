//
// The page after sign in.
//

import 'package:finalproject/states/login_states.dart';
import 'package:finalproject/widgets/appbar.dart';
import 'package:finalproject/widgets/drawer.dart';
import 'package:finalproject/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:money_formatter/money_formatter.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPage();
  
}

class _MainPage extends ConsumerState<MainPage> {

  @override
  Widget build(BuildContext context) {
    String username = ref.watch(usernameProvider);
    final loggedUsers = ref.watch(loggedUsersProvider);
    double balance = loggedUsers[username]?.$2 ?? 0;
    final usernameNotifier = ref.watch(usernameProvider.notifier);
    final passwordNotifier = ref.watch(passwordProvider.notifier);

    return Scaffold(
      appBar: appBar(username),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.all(15)),
            
            Text("Hello $username!", textScaler: TextScaler.linear(2)),
            if (balance <= 0)
              Text("You are a broke ass! (0.00 \$)", textScaler: TextScaler.linear(3)),

            Padding(padding: EdgeInsetsGeometry.all(15)),

            FilledButton(onPressed: () {
              usernameNotifier.set("");
              passwordNotifier.set("");
              context.go('/');
            }, child: Text("Log Out")),
          ]
        )
      ),
      bottomNavigationBar: navigationBar(0, context),
    );
  }

}