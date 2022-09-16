import 'package:dartz/dartz.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login(String email, String password);

  Future<Either<Failure, bool>> register(UserData userData);

  Future<bool> checkAuthState();

  Future<Either<Failure, bool>> logout();
}
