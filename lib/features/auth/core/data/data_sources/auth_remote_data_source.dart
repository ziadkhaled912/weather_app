import 'package:weather_app/features/auth/core/data/models/user_data.dart';

abstract class AuthRemoteDataSource {
  Future<void> setUserData(UserData userData);
}