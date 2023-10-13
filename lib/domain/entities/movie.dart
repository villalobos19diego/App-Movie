//esta clase es la que da las vida a movies_datasource las cuales le da las propiedades

//las cuales dependende y seran todas requeridas y todas deben de ser usadas la cual pasa a ser un tabla

class Movie {
  final bool adult;
  final String backdropPath;
  final List<String> genreIds;
  final int id;
  final String originalLanguaje;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String poesterPath;
  final DateTime releaseDate;
  final String title;
  final double voteAverage;
  final int voteCount;


   Movie({required this.adult, required this.backdropPath, required this.genreIds, required this.id, required this.originalLanguaje,  required this.originalTitle, required this.overview,  required this.popularity,  required this.poesterPath,  required this.releaseDate,  required this.title,required this.voteAverage, required this.voteCount, 



    r, required String originalLanguage, required String posterPath, required bool video
   });
}
