import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/data/error/failures/authentication_failure.dart';
import 'package:weather_app/core/data/error/failures/client_failure.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/core/domain/usecases/usecase.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';
import 'package:weather_app/features/auth/core/domain/use_cases/auth_state_use_case.dart';
import 'package:weather_app/features/auth/core/domain/use_cases/logout_use_case.dart';
import 'package:weather_app/features/auth/login/domain/use_cases/login_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/auth/register/domain/use_cases/register_use_case.dart';

import 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final AuthStateUseCase _authStateUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthCubit(
    this._loginUseCase,
    this._registerUseCase,
    this._authStateUseCase, this._logoutUseCase,
  ) : super(const AuthState.initial());

  Future<void> login(String email, String password) async {
    emit(const AuthState.loading());
    final result = await _loginUseCase(
      LoginParams(
        email: email,
        password: password,
      ),
    );
    emit(
      result.fold(
        (failure) => _resolveFailure(failure),
        (right) => const AuthState.success(),
      ),
    );
  }

  Future<void> register(UserData userData) async {
    emit(const AuthState.loading());
    final result = await _registerUseCase(RegisterParams(userData));
    emit(
      result.fold(
        (failure) => _resolveFailure(failure),
        (right) => const AuthState.success(),
      ),
    );
  }

  Future<void> checkAuthStatus() async {
    final result = await _authStateUseCase(NoParams());
    if(result) {
      emit(const AuthState.authorized());
    } else {
      emit(const AuthState.unauthorized());
    }
  }

  Future<void> logout() async {
    emit(const AuthState.loading());
    final result = await _logoutUseCase(NoParams());
    emit(
      result.fold(
            (failure) => _resolveFailure(failure),
            (right) => const AuthState.success(),
      ),
    );
  }

  AuthState _resolveFailure(Failure failure) {
    if (failure is ClientFailure) {
      return const AuthState.noNetwork();
    } else if (failure is AuthenticationFailure) {
      final message = failure.message;
      return AuthState.error(message: message);
    }
    return const AuthState.error(message: "Unknown error");
  }
}
