//
// The page after sign in.
//

import 'package:finalproject/states/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPage();
  
}

class _MainPage extends ConsumerState<MainPage> {

  @override
  Widget build(BuildContext context) {
    String username = ref.watch(usernameProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("yeah!"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.all(15)),
            Text("Welcome $username!"),
             
          ]
        )
      )
    );
  }

}