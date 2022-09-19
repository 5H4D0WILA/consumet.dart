import 'base_parser.dart';

abstract class BaseProvider extends BaseParser {
  ///
  /// Search for books/anime/manga/etc using the given query
  ///
  /// returns a future resolving to a data object
  ///
  Future<dynamic> search(String query, [List<dynamic> args]);
}