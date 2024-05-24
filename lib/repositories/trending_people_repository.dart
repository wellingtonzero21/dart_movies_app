import 'package:dart_movies_app/api/http_adapter.dart';
import 'package:dart_movies_app/models/trending_people_model.dart';

class TrendingPeopleRepository {
  final HttpAdapter httpAdater;

  TrendingPeopleRepository({required this.httpAdater});

  Future<TrendingPeopleModel> getTrendingMovies() async {
    const url =
        'https://api.themoviedb.org/3/trending/person/day?language=pt-BR';

    final response =
        await httpAdater.get(url: url, queryParams: {'language': 'pt-BR'});

    return TrendingPeopleModel.fromJson(response);
  }
}