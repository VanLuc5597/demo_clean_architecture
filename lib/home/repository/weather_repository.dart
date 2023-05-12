import 'package:domain_layer/home/enitiy/weather_entity.dart';

import '../../general/resource.dart';

abstract class WeatherRepository {
  const WeatherRepository();

  Stream<Resource<WeatherEntity>> getWeather();
}
