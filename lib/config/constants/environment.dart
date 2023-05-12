import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String movieApiKey = dotenv.env['OMDB_API_KEY'] ?? 'No exite la api key';
}
