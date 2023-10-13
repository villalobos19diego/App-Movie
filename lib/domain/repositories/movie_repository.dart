import 'package:proyecto_cine/domain/entities/movie.dart';

abstract class MoviesRepository {
  
  //son identicas solo lo que cambia es el nombre
  //esta clase nos sirve para hacer  una parte de la informacion con las categorigas las cuales me puede servir  y cambiar sin afectar
  
  
  
  Future<List<Movie>> getNowPlaying({int page = 1});

   Future<List<Movie>> getPopular({int page = 1});
    Future<List<Movie>> getUpcoming({int page = 1});
     Future<List<Movie>> getTopRated({int page = 1});
}
