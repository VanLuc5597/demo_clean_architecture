import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  String? time;
  String? nameProvince;
  String? weatherIcon;
  String? weatherDescription;

  WeatherEntity(
      {required this.time,
      required this.nameProvince,
      required this.weatherIcon,
      required this.weatherDescription});

  @override
  List<Object?> get props => [time];
}
