import 'package:domain_layer/general/resource.dart';
import 'package:domain_layer/general/resource_use_case.dart';
import 'package:domain_layer/movie/repository/movies_repository.dart';
import 'package:injectable/injectable.dart';

import '../entity/movie_entity.dart';

@injectable
class GetPopularMoviesUseCase extends ResourceUseCase<int, List<MovieEntity>?> {
  final MoviesRepository moviesRepository;

  GetPopularMoviesUseCase(this.moviesRepository);

  @override
  Stream<Resource<List<MovieEntity>?>> invoke(int parameter) {
    return moviesRepository.getPopularMovies(parameter);
  }
}
