import 'package:domain_layer/general/resource.dart';
import 'package:domain_layer/general/resource_use_case.dart';
import 'package:domain_layer/home/enitiy/weather_entity.dart';
import 'package:domain_layer/home/repository/weather_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWeatherUseCase extends ResourceUseCase<void, WeatherEntity>{
  final WeatherRepository weatherRepository;

  GetWeatherUseCase(this.weatherRepository);

  @override
  Stream<Resource<WeatherEntity>> invoke(void parameter) {
    return weatherRepository.getWeather();
  }
}