class ApiConstants {
  static const String baseUrl = "http://10.0.2.2:3000/api";

  // Authentication
  static const String loginEndpoint = "/auth/login";
  static const String registerEndpoint = "/auth/register";
  static const String refreshEndpoint = "/auth/refresh-token";

  // User
  static const String getAllUserEndpoint = "/users";

  // Weather
  static const String weatherByCityEndPoint = "/weather?city=";
  static const String hourlyWeatherEndPoint = "/weather/hourly?";
}
