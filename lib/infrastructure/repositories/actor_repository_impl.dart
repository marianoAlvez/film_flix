import 'package:film_flix/domain/datasources/actors_datasource.dart';
import 'package:film_flix/domain/entities/actor.dart';
import 'package:film_flix/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource datasource;
  ActorRepositoryImpl(this.datasource);

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) {
    return datasource.getActorsByMovie(movieId);
  }
}
