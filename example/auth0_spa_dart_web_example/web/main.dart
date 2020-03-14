import 'dart:convert';
import 'dart:html';
import 'package:auth0_spa_dart/auth0_spa_dart.dart';

Future<void> authentication() async {
  try {
    if (window.location.search.contains('code=') &&
        window.location.search.contains('state=')) {
      await promiseToFuture(auth0.handleRedirectCallback());
      window.history.replaceState({}, document.title, window.location.pathname);
    }
  } catch (e) {} finally {}
}

Auth0Client auth0;
final clientId = '';
final domain = '';
final redirectUrl = window.location.href;
final options = CreateAuth0ClientOptions(
    domain: domain, client_id: clientId, redirect_uri: redirectUrl);

void main() async {
  auth0 = await createAuth0Client(options);
  await authentication();

  var isAuth = await promiseToFuture(auth0.isAuthenticated());
  if (isAuth) {
    var obj = await promiseToFuture(auth0.getUser());
    var user = jsonDecode(stringify(obj));
    querySelector('#output').text = user.toString();
  } else {}

  querySelector('button').onClick.listen((e) async {
    await promiseToFuture(auth0.loginWithRedirect());
  });
}
