// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_states.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(username)
const usernameProvider = UsernameProvider._();

final class UsernameProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const UsernameProvider._()
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
  String debugGetCreateSourceHash() => _$usernameHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return username(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$usernameHash() => r'c98986c6a434ad54933380a557b2902f899e9f14';

@ProviderFor(password)
const passwordProvider = PasswordProvider._();

final class PasswordProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const PasswordProvider._()
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
  String debugGetCreateSourceHash() => _$passwordHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return password(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$passwordHash() => r'4c84ff83ee4b595d3c0a97e71a8b9e4fd101afae';

@ProviderFor(loggedUsers)
const loggedUsersProvider = LoggedUsersProvider._();

final class LoggedUsersProvider
    extends
        $FunctionalProvider<
          List<(String, String, UserData)>,
          List<(String, String, UserData)>,
          List<(String, String, UserData)>
        >
    with $Provider<List<(String, String, UserData)>> {
  const LoggedUsersProvider._()
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
  String debugGetCreateSourceHash() => _$loggedUsersHash();

  @$internal
  @override
  $ProviderElement<List<(String, String, UserData)>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<(String, String, UserData)> create(Ref ref) {
    return loggedUsers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<(String, String, UserData)> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<(String, String, UserData)>>(
        value,
      ),
    );
  }
}

String _$loggedUsersHash() => r'5ae23d9c9edcc080671306b3b6847d5fb5fb9eeb';
