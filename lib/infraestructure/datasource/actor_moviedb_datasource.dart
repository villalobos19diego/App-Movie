class ActorMovieDbDatasource extends ActorsDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'lenguage': 'es-MX'
      }));

  @override
  Future<List<Actor>> getActorsByMovie(String movieId) async {
    final response = await dio.get(
      '/movie/$movieId/credits',
    );

    final catsResponse = CreditsResponse.fromJson(response.data);


    List<Actor> = castResponse.cats.map(
      (cast) => ActorMapper.castToEntity(cast)
    ).toList();
    return actor;
  }
}
