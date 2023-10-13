import 'package:proyecto_cine/domain/entities/movie.dart';

abstract class MoviesDataSource {
  
  
  //en esta definimos las categorias las cuales se mostraran en la pantalla las cuales van a salir de un future,
  //
  
  Future<List<Movie>> getNowPlaying({int page = 1});

   Future<List<Movie>> getPopular({int page = 1});
    Future<List<Movie>> getUpcoming({int page = 1});
     Future<List<Movie>> getTopRated({int page = 1});
}
