import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_cine/infraestructure/datasource/moviedb_datasource.dart';
import 'package:proyecto_cine/infraestructure/repositories/movie_repositoryimpl.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MovieDbDataSource());
});
