@JS()
library errors;

import "package:js/js.dart";

@JS()
class AuthenticationError extends Error {
  // @Ignore
  external String get error;
  external set error(String v);
  external String get error_description;
  external set error_description(String v);
  external String get state;
  external set state(String v);
  external dynamic get appState;
  external set appState(dynamic v);
  external factory AuthenticationError(
      String error, String error_description, String state,
      [dynamic appState]);
}
