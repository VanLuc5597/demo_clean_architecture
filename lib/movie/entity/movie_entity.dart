import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int page;
  final int id;
  final String title;
  final String originalTitle;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final double voteAverage;
  final int voteCount;
  final String description;

  const MovieEntity({
    required this.page,
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
    required this.voteCount,
    required this.voteAverage,
    required this.description,
  });

  @override
  List<Object?> get props => [id];
}
