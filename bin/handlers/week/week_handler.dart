import 'package:shelf/shelf.dart' as shelf;

import '../base_handler.dart';

class WeekHandler implements BaseHandler {
  static String get path => 'week';

  @override
  Future<shelf.Response> handle(shelf.Request request) async {
    final now = DateTime.now();

    final int week = 1;
    return shelf.Response.ok('$week');
  }
}
