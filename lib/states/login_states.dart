import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'login_states.g.dart';

@riverpod
String username(Ref ref) => "";

@riverpod
String password(Ref ref) => "";

class UserData {
  int balance = 0;
  
  void withdraw(int num) {
    balance -= num;
  }

  void deposit(int num) {
    balance += num;
  }
}

@riverpod
List<(String, String, UserData)> loggedUsers(Ref ref) => [];
