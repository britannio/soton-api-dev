import 'package:meta/meta.dart';

String buildUrlUnencoded({
  @required String endpoint,
  @required Map<String, String> variables,
  String trailing = '',
}) {
  final variableBuilder = StringBuffer(endpoint);
  bool firstVariable = true;

  for (final pair in variables.entries) {
    final combo = '${pair.key}=${pair.value}';
    if (firstVariable) {
      firstVariable = false;
      variableBuilder.write('?$combo');
    } else {
      variableBuilder.write('&$combo');
    }
  }

  variableBuilder.write(trailing);

  return variableBuilder.toString();
}
