// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_states.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsernameNotifier)
const usernameProvider = UsernameNotifierProvider._();

final class UsernameNotifierProvider
    extends $NotifierProvider<UsernameNotifier, String> {
  const UsernameNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usernameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usernameNotifierHash();

  @$internal
  @override
  UsernameNotifier create() => UsernameNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$usernameNotifierHash() => r'ae04baf2a6c2ed434729d3f4f45422e6f4fece12';

abstract class _$UsernameNotifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PasswordNotifier)
const passwordProvider = PasswordNotifierProvider._();

final class PasswordNotifierProvider
    extends $NotifierProvider<PasswordNotifier, String> {
  const PasswordNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'passwordProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$passwordNotifierHash();

  @$internal
  @override
  PasswordNotifier create() => PasswordNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$passwordNotifierHash() => r'dc27e5b2b284bd50c51df955de93261d3bc173f8';

abstract class _$PasswordNotifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(LoggedUsersNotifier)
const loggedUsersProvider = LoggedUsersNotifierProvider._();

final class LoggedUsersNotifierProvider
    extends
        $NotifierProvider<
          LoggedUsersNotifier,
          Map<String, (String, double, double)>
        > {
  const LoggedUsersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggedUsersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggedUsersNotifierHash();

  @$internal
  @override
  LoggedUsersNotifier create() => LoggedUsersNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, (String, double, double)> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<Map<String, (String, double, double)>>(value),
    );
  }
}

String _$loggedUsersNotifierHash() =>
    r'51cccb6195b3e939b13bc76b7fefce5987ed158e';

abstract class _$LoggedUsersNotifier
    extends $Notifier<Map<String, (String, double, double)>> {
  Map<String, (String, double, double)> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              Map<String, (String, double, double)>,
              Map<String, (String, double, double)>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                Map<String, (String, double, double)>,
                Map<String, (String, double, double)>
              >,
              Map<String, (String, double, double)>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
