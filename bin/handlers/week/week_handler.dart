import 'package:shelf/shelf.dart' as shelf;

import '../base_handler.dart';

class WeekHandler implements BaseHandler {
  static String get path => 'week';

  @override
  Future<shelf.Response> handle(shelf.Request request) async {
    // TODO add support for future semesters
    final startOfTerm = DateTime(2021, 1, 4);
    final now = DateTime.now();
    final daysSinceStartOfTerm = now.difference(startOfTerm).inDays;

    final weeksSinceStartOfTerm = (daysSinceStartOfTerm / 7).ceil();
    final offset = 11;
    return shelf.Response.ok('${weeksSinceStartOfTerm + 1 + offset}');
  }
}
