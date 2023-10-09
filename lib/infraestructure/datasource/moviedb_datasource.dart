import 'package:dio/dio.dart';
import 'package:proyecto_cine/config/constants/environment.dart';
import 'package:proyecto_cine/domain/entities/movie.dart';

class MovieDbDataSource extends MovieDataSource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/movie/550?api_key=13561f6415a1bbf48f431513a3bfc4fd',
    queryParameters: {
      'api_key': Environment.theMovieDbKey,
      'language': 'es-ES',
    },
  ));
  
  List<Movie> _jsonToMovies(Map<String, dynamic> json) {
    final movieDBResponse = MovieDbResponse.fromJson(json);
    
    final List<Movie> movies = movieDBResponse.results
    .where((moviedb)=>moviedb.posterPath!='no-poster').map(
      (moviedb) => MovieMapper.movieDBToEntity(moviedb)).toList();
      return movies;
  }

  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing', queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  Future<List<Movie>> getPopular({int page = 1}) async {
    final response = await dio.get('/movie/popular', 
    queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }

  Future<List<Movie>> getTopRated({int page = 1}) async {
    final response = await dio.get('/movie/top_rated', 
    queryParameters: {
      'page': page,
    });
    return _jsonToMovies(response.data);
  }
}