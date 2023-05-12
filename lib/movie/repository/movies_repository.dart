import '../../general/resource.dart';
import '../entity/movie_entity.dart';

abstract class MoviesRepository {
  const MoviesRepository();

  Stream<Resource<List<MovieEntity>?>> getPopularMovies(int pageIndex);
}
