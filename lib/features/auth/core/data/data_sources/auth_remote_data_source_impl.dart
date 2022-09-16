import 'package:weather_app/core/data/datasources/endpoints.dart';
import 'package:weather_app/features/auth/core/data/data_sources/auth_remote_data_source.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/features/auth/core/data/services/firestore_services.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final FirestoreServices _firestoreServices;

  AuthRemoteDataSourceImpl(this._firestoreServices);

  @override
  Future<void> setUserData(UserData userData) async => await _firestoreServices.setData(
    path: EndPoints.user(userData.uid!),
    data: userData.toJson(),
  );
}
