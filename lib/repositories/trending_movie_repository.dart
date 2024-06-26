import 'package:dart_movies_app/api/http_adapter.dart';
import 'package:dart_movies_app/models/trending_movies_model.dart';

class TrendingMoviesRepository {
  final HttpAdapter httpAdater;

  TrendingMoviesRepository({required this.httpAdater});

  Future<TrendingMoviesModel> getTrendingMovies() async {
    const url = 'https://api.themoviedb.org/3/trending/all/day?language=pt-BR';

    final response = await httpAdater.get(url: url);

    return TrendingMoviesModel.fromJson(response);
  }
}
