//
// The page after sign in.
//

import 'package:finalproject/states/login_states.dart';
import 'package:finalproject/widgets/appbar.dart';
import 'package:finalproject/widgets/drawer.dart';
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
  double _textFieldMoneyValue = 0;

  @override
  Widget build(BuildContext context) {
    String username = ref.watch(usernameProvider);
    final loggedUsers = ref.watch(loggedUsersProvider);
    final loggedUsersNotifier = ref.watch(loggedUsersProvider.notifier);
    double balance = loggedUsers[username]?.$2 ?? 0;
    double debt = loggedUsers[username]?.$3 ?? 0;


    return Scaffold(
      appBar: appBar(username),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.all(15)),
            Text("Balance: ${balance.toStringAsFixed(2)}", textScaler: TextScaler.linear(2)),
            Text("Debt: ${debt.toStringAsFixed(2)}"),
            Padding(padding: EdgeInsetsGeometry.all(15)),

            SizedBox(width: 250, child: TextField(
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*')),
              ],
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Money amount...',
                border: OutlineInputBorder()
              ),
              onChanged: (value) => _textFieldMoneyValue = double.tryParse(value) ?? 0,
            )),

            Padding(padding: EdgeInsetsGeometry.all(15)),

            SizedBox(width: 250, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              OutlinedButton(onPressed: () => loggedUsersNotifier.deposit(username, _textFieldMoneyValue), child: Text("Deposit")),
              Padding(padding: EdgeInsetsGeometry.all(5)),
              OutlinedButton(onPressed: () => loggedUsersNotifier.withdraw(username, _textFieldMoneyValue), child: Text("Withdraw")),
            ])),

            Padding(padding: EdgeInsetsGeometry.all(15)),

            FilledButton(onPressed: () {
              loggedUsersNotifier.setBalance(username, 0);
              loggedUsersNotifier.setDebt(username, 0);
            }, child: Text("Bankruptcy!")),
          ]
        )
      ),
      drawer: drawer(context)
    );
  }

}