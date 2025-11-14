

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TermsOfService extends ConsumerWidget {
  const TermsOfService({super.key});

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("67 diddy ohio ☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️☠️"),
            BackButton(onPressed: () => context.go('/')),

          ]
        )
      )
    );
  }

  
}