final movieInfoprovider =
    StateNotifierProvider<MovieMapNotifier, Map<String, Movie>>((ref) {
  final movieRepositoyr = ref.watch(movieRepositoryProvider);
  return MovieMapNotifier(getMovie: movieRepository.getMovieById);
});


typedef GetMovieCallback = Future<Movie<Function(String movieId);
class MovieNotifier extends StateNotifier<Map<String,Movie>>{
  final GetMovieCallback getMovie;


  MovieMapNotifier({
    required this.getMovie,

  }): super({});


  Future<void> loadMovie(String movieId) async{


    if(state[movieId] !=null)return;
    final movie = await getMovie(movieId);
    state = {...state, movieId: movie};
  }
}