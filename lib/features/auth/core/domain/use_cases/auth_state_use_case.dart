import 'package:injectable/injectable.dart';
import 'package:weather_app/core/domain/usecases/usecase.dart';
import 'package:weather_app/features/auth/core/domain/repositories/auth_repository.dart';

@lazySingleton
class AuthStateUseCase extends UseCase<Future<bool>, NoParams> {
  final AuthRepository _authRepository;

  AuthStateUseCase(this._authRepository);

  @override
  Future<bool> call(NoParams params) async => await _authRepository.checkAuthState();
}
