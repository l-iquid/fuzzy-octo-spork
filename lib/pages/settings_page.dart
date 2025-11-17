
import 'package:finalproject/states/login_states.dart';
import 'package:finalproject/widgets/appbar.dart';
import 'package:finalproject/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsPage();
  
}

class _SettingsPage extends ConsumerState<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    String username = ref.watch(usernameProvider);

    return Scaffold(
      appBar: appBar(username),
      body: Center(
        child: Column(
          children: [

          ]
        )
      ),
      bottomNavigationBar: navigationBar(2, context),
    );
  }

}