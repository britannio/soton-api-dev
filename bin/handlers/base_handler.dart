import 'package:shelf/shelf.dart' as shelf;

abstract class BaseHandler {
  Future<shelf.Response> handle(shelf.Request request);
}
