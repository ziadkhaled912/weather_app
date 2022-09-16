import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/core/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';
import 'package:weather_app/features/auth/core/domain/repositories/auth_repository.dart';

@lazySingleton
class RegisterUseCase extends UseCase<Future<Either<Failure, bool>>, RegisterParams> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(RegisterParams params) async =>
      await _authRepository.register(params.userData);

}

class RegisterParams extends Equatable {
  final UserData userData;

  const RegisterParams(this.userData);

  @override
  List<Object?> get props => [userData];
}