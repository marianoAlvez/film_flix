import 'package:film_flix/domain/entities/actor.dart';

abstract class ActorsDatasource {
  Future<List<Actor>> getActorsByMovie(String movieId);
}
