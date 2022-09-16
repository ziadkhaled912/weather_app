import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/error/failures/failure.dart';
import 'package:weather_app/core/domain/usecases/usecase.dart';
import 'package:weather_app/features/auth/core/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUseCase extends UseCase<Future<Either<Failure, bool>>, NoParams> {
  final AuthRepository _authRepository;

  LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async =>
      _authRepository.logout();
}