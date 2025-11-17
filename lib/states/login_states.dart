import 'dart:math';

import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'login_states.g.dart';


@riverpod
class UsernameNotifier extends _$UsernameNotifier {
  @override
  String build() => "";

  void set(String to) {
    state = to;
  }
}

@riverpod
class PasswordNotifier extends _$PasswordNotifier {
  @override
  String build() => "";

  void set(String to) {
    state = to;
  }
}


@riverpod
class LoggedUsersNotifier extends _$LoggedUsersNotifier {
  @override
  Map<String, (String, double, double)> build() => {};

  void push(String username, (String, double, double) entry) {
    Map<String, (String, double, double)> old = Map.from(state);
    old[username] = entry;
    state = old;
  }

  bool isEmpty() {
    return state.isEmpty;
  }

  void setBalance(String username, double balance) {
    if (state.containsKey(username)) {
      Map<String, (String, double, double)> old = Map.from(state);
      old[username] = (old[username]!.$1, balance, old[username]!.$3);
      state = old;
    }
  }

  void setDebt(String username, double debt) {
    if (state.containsKey(username)) {
      Map<String, (String, double, double)> old = Map.from(state);
      old[username] = (old[username]!.$1, old[username]!.$2, debt);
      state = old;
    }
  }

  bool hasDebt(String username) {
    return (state[username]?.$3 ?? 0) > 0;
  }

  void deposit(String username, double amount) {
    if (state.containsKey(username)) {
      if (hasDebt(username)) {
        double diff = state[username]!.$3 - amount;
        // lower debt as much as it should (until reaches 0)
        setDebt(username, max(state[username]!.$3 - amount, 0));
        if (diff < 0) {
          // set balance to the remaining money pretty much
          setBalance(username, state[username]!.$2 + -diff);
        }
      } else {
        setBalance(username, state[username]!.$2 + amount);
      }
    }
  }

  void withdraw(String username, double amount) {
    if (state.containsKey(username)) {
      if (state[username]!.$2 - amount < 0) {
        setDebt(username, state[username]!.$3 + (amount - state[username]!.$2));
        setBalance(username, 0);
      } else {
        setBalance(username, state[username]!.$2 - amount);
      }
    }
  }

  void pop(String username) {
    Map<String, (String, double, double)> old = Map.from(state);
    old.remove(username);
    state = old;
  }

}


