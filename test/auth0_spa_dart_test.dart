import 'dart:html';

import 'package:auth0_spa_dart/auth0_spa_dart.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Auth0Client auth0;
    final clientId = '';
    final domain = '';
    final redirectUrl = window.location.href;
    final options = CreateAuth0ClientOptions(
        domain: domain, client_id: clientId, redirect_uri: redirectUrl);

    setUp(() async {
      auth0 = await createAuth0Client(options);
    });

    test('First Test', () {
    });
  });
}
