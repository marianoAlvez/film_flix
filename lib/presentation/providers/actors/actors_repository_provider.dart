import 'package:film_flix/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:film_flix/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMovieDbDatasource());
});
