import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_chat_frontend/utils/helpers/helper_function.dart';

final locationProvider = FutureProvider.autoDispose<Position>((ref) async {
  return await HelperFunction.getCurrentLocation();
});
