import 'package:flutter_dotenv/flutter_dotenv.dart';


//siempre  es definir estatica  para que funcione y si queremos usar varias apis debemos usar diferentes archivos por al momento de invocar 
//se manda a llamar
class Environment {
  static String theMovieDbKey = dotenv.env['THE MOVIEDB_KEY']??'NO_KEY';
}