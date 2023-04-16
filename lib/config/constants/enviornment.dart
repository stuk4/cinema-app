import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviornment {
  static String theMoiveDbKey =
      dotenv.env['THE_MOVIEDB_KEY'] ?? 'No hay api The Movie DB';
}
