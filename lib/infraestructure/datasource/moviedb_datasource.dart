import 'package:dio/dio.dart';
import 'package:proyecto_cine/config/constants/environment.dart';
import 'package:proyecto_cine/domain/datasources/movies_datasource.dart';
import 'package:proyecto_cine/domain/entities/movie.dart';
import 'package:proyecto_cine/infraestructure/mappers/movie_mapper.dart';
import 'package:proyecto_cine/infraestructure/models/moviedb/moviedb_response.dart';

class MovieDbDataSource extends MoviesDataSource {
  //declaro un variable las cual tendra la clase
  //esta clase define la ruta de la api final dio y tambien podemos cambiar el idioma
  //

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'es-ES',
    },
  ));

  List<Movie> _jsonToMovies(Map<String, dynamic> json) {
    final movieDBResponse = MovieDbResponse.fromJson(json);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((moviedb) => MovieMapper.movieDBToEntity(moviedb))
        .toList();
    return movies;
  }

  //get ase el request//

//primero se defininen para despues implementarlos y los mandamoa llamar //
//en el metodo scrin las cuales manda a llamr todas las peliculas que estan en cartelera//
//las cual devuelve un json con la estructura//
//los cuales se definen los get en un archivo llamado repositorio los cuales deben devolverse en un Json

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing', queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
    final response = await dio.get('/movie/popular', queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) async {
    final response = await dio.get('/movie/top_rated', queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  @override
  Future<List<Movie>> getUpcoming({int page = 1}) async {
    final response =
        await dio.get('/movie/upcoming', queryParameters: {' page': page});
    return _jsonToMovies(response.data);
  }

  @override
  Future<Movie> getMovieById(String id) async {
    final response = await dio.get('movie/$id');
    if (response.statusCode != 200) {
      throw Exception('movie with id: $id not found');
    }

    final movieDetails = MovieDetails.fromJson(response.data);
    final Movie movie = MovieMapper.movieDetailsToEntity(movieDetails);
    return movie;
  }
}
