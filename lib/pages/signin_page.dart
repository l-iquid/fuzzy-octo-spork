import 'package:finalproject/states/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPage();
  
}

class _SignInPage extends ConsumerState<SignInPage> {
  String _usernameBox = "";
  String _passwordBox = "";
  bool _tosAgreement = false;

  @override
  Widget build(BuildContext context) {
    List<(String, String, UserData)> loggedUsers = ref.watch(loggedUsersProvider);
    String username = ref.watch(usernameProvider);
    String password = ref.watch(passwordProvider);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.all(15)),
            Image(image: AssetImage("lib/assets/images/logo.png"), width: 180, height: 100),
            Text("Raising Debt", textScaler: TextScaler.linear(1.5)),
            Padding(padding: EdgeInsetsGeometry.all(5)),

            Text(loggedUsers.isEmpty ? "Create Account" : "Sign In", textScaler: TextScaler.linear(2)),

            SizedBox(width: 250, child: TextFormField(
              decoration: InputDecoration(
                hintText: "Account username...",
                labelText: "Username",
          
              ),
              maxLines: 1,
              maxLength: 20,
              onChanged: (value) => setState(() => _usernameBox = value),
            )),

            SizedBox(width: 250, child: TextFormField(
              decoration: InputDecoration(
                hintText: "Account password...",
                labelText: "Password",
          
              ),
              maxLines: 1,
              maxLength: 20,
              obscureText: true,
              onChanged: (value) => setState(() => _passwordBox = value),
            )),

            ElevatedButton(child: Text("View Terms of Service"), onPressed: () => context.go('/terms')),

            SizedBox(width: 350, child: 
              CheckboxListTile(
                title: const Text("I agree to the Terms of Service."),
                value: _tosAgreement,
                onChanged: (bool? newValue) {
                  setState(() {
                    _tosAgreement = newValue ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              )
            ),

            OutlinedButton(onPressed: () {
              if (_usernameBox.isNotEmpty && _passwordBox.isNotEmpty && _tosAgreement) {
                setState(() {
                  loggedUsers.add((_usernameBox, _passwordBox, UserData()));
                
                  username = _usernameBox;
                  password = _passwordBox;
                });
                context.go('/main');
              }
            }, child: Text("Proceed"))

          ]
        )
      )
    );
  }
  
}