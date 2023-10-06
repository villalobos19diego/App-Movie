import 'package:dio/dio.dart';
import 'package:proyecto_cine/config/constants/environment.dart';
import 'package:proyecto_cine/config/domain/datasources/movies_datasource.dart';
import 'package:proyecto_cine/config/domain/entities/movie.dart';

class MoviedbDataSource extends MoviesDataSource {
  final dio = Dio(BaseOptions(
      baseUrl: 'HTTPS://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'lenguage': 'es-MX'
      }));

  List<Movie> _jsonToMovies(Map<String, dynamic> json) {
    final movieDBResponse = MovieDBResponse.fromJson(json);

    final List<moviedb> => moviedb.posterPath != 'no-poster';
    
  }
  
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
  final response = await dio.get('/movie/now_playing',  queryParameters: {'page' : page});
  }
  
  @override
  Future<List<Movie>> getPopular({int page = 1}) async {
final Response = await dio.get('/movie/popular', queryParameters: {'page' : page});
return _jsonToMovies(response.data);



  }
  
  @override
  Future<List<Movie>> getTopRated({int page = 1}) async{
    final response = await dio.get('/movie_to_rated', queryParameters: {
      'page' : page
    });
   
  
  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
  
  }
}
