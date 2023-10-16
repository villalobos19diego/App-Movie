
import 'package:proyecto_cine/infraestructure/datasource/';



final actorSRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorMovieDbDatasource());
});


