
import 'package:proyecto_cine/domain/entities/actor.dart';

abstract class ActorRepository {
  Future<List<Actor>> getActorsByMovie(String movieId);
}
