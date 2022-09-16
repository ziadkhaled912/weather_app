import 'package:weather_app/core/app/config_reader.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppConfig {
  String getBaseUrl() {
    return ConfigReader.getBaseUrl();
  }

  int get databaseVersion => ConfigReader.databaseVersion;
  bool get isDevelopmentEnv => ConfigReader.environment == "dev";
}