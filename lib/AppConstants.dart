import 'package:configtest/Helpers/EnvConfig/DevConfig.dart';
import 'package:configtest/Helpers/EnvConfig/ProdConfig.dart';

class AppConstants {
  static String environment =
      const String.fromEnvironment('FLUTTER_ENV', defaultValue: 'dev');

  static String baseUrl =
      environment == "dev" ? DevConfig.baseUrl : ProdConfig.baseUrl;
  static String platform =
      environment == "dev" ? DevConfig.platform : ProdConfig.platform;

  // static String? platform;
  // static String? baseUrl;

  // static Future<Map<String, dynamic>> initialize() async {
  //   File file = File("./config_$environment.json");
  //   String jsonContent = await file.readAsString();
  //   return json.decode(jsonContent);
  // }

  // static void setValues(Map<String, dynamic> value) {
  //   platform = value["platform"];
  //   baseUrl = value["baseUrl"];
  // }
}
