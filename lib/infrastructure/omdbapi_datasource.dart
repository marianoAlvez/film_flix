import 'package:dio/dio.dart';
import 'package:film_flix/config/constants/environment.dart';
import 'package:film_flix/domain/datasources/movies_datasource.dart';
import 'package:film_flix/domain/entities/movie.dart';

class OmdbapiDatasource extends MoviesDatasource {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'http://www.omdbapi.com/',
        queryParameters: {
          'apikey': Environment.movieApiKey,
        },
      ),
    );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get(
      'movie/now_playing',
      queryParameters: {
        'page': page,
      },
    );
    return [];
  }
}
