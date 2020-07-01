import 'dart:convert';
import 'dart:html';
import 'dart:js';
import 'package:auth0_spa_dart/auth0_spa_dart.dart';
import 'package:auth0_spa_dart/src/stringify.dart';
import 'package:auth0_spa_dart/src/global.dart';

Future<void> authentication() async {
  try {
    if (window.location.search.contains('code=') &&
        window.location.search.contains('state=')) {
      await auth0.handleRedirectCallback();
      window.history.replaceState({}, document.title, window.location.pathname);
    }
  } catch (e) {} finally {}
}

Auth0Client auth0;
final clientId = 'rGb17z15dshFML46KlRA7IrnlJpzx6Pm';
final domain = 'testauth0spadart.us.auth0.com';
final redirectUrl = window.location.href;
final options = CreateAuth0ClientOptions(
    domain: domain, client_id: clientId, redirect_uri: redirectUrl);

void main() async {
  auth0 = await createAuth0Client(options);
  await authentication();
  print(JsObject(auth0.options));

  var isAuth = await auth0.isAuthenticated();
  if (isAuth) {
    var obj = await auth0.getUser();
    var user = jsonDecode(stringify(obj));
    querySelector('#output').text = user.toString();
  } else {}

  querySelector('button').onClick.listen((e) async {
    await auth0.loginWithRedirect();
  });
}
