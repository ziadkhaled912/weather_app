import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.loading() = Loading;

  const factory AuthState.success() = Success;

  const factory AuthState.registerSuccess() = RegisterSuccess;

  const factory AuthState.authorized() = Authorized;

  const factory AuthState.unauthorized() = Unauthorized;

  const factory AuthState.error({required String message}) = Error;

  const factory AuthState.noNetwork() = NoNetwork;
}
