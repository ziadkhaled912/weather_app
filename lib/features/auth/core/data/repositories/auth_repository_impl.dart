import 'package:dartz/dartz.dart';
import 'package:weather_app/core/data/error/exceptions/application_exception.dart';
import 'package:weather_app/core/data/error/exceptions/firebase_auth_exception.dart';
import 'package:weather_app/core/data/error/failures/authentication_failure.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/features/auth/core/data/data_sources/auth_remote_data_source.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';
import 'package:weather_app/features/auth/core/data/services/auth_services.dart';
import 'package:weather_app/features/auth/core/domain/repositories/auth_repository.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthServices _authServices;
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(this._authServices, this._authRemoteDataSource);

  @override
  Future<Either<Failure, bool>> login(String email, String password) async {
    try {
      await _authServices.login(email, password);
      return const Right(true);
    } on FirebaseServicesException catch (e) {
      return Left(AuthenticationFailure.login(message: e.message));
    } on ApplicationException {
      return Left(
          AuthenticationFailure.unknown(message: S.current.somethingWentWrong));
    }
  }

  @override
  Future<Either<Failure, bool>> register(UserData userData) async {
    try {
      final user = await _authServices.register(userData);
      await _authRemoteDataSource.setUserData(UserData(
        uid: user?.uid,
        email: userData.email,
        name: userData.name,
        password: '',
      ));
      return const Right(true);
    } on FirebaseServicesException catch (e) {
      return Left(AuthenticationFailure.login(message: e.message));
    } on ApplicationException {
      return Left(
          AuthenticationFailure.unknown(message: S.current.somethingWentWrong));
    }
  }

  @override
  Future<bool> checkAuthState() async {
    final currentUser = _authServices.currentUser;
    if(currentUser != null) {
      return true;
    }
    return false;
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      await _authServices.logout();
      return const Right(true);
    } on FirebaseServicesException catch (e) {
      return Left(AuthenticationFailure.login(message: e.message));
    } on ApplicationException {
      return Left(
          AuthenticationFailure.unknown(message: S.current.somethingWentWrong));
    }
  }
}
