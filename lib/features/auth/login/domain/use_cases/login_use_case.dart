import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/core/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/auth/core/domain/repositories/auth_repository.dart';

@lazySingleton
class LoginUseCase extends UseCase<Future<Either<Failure, bool>>, LoginParams> {
  final AuthRepository _loginRepository;

  LoginUseCase(this._loginRepository);

  @override
  Future<Either<Failure, bool>> call(LoginParams params) async =>
      await _loginRepository.login(params.email, params.password);

}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}