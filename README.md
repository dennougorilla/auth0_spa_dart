A generated Dart API for [auth0-spa-js](https://github.com/auth0/auth0-spa-js)
using [pkg/js](https://pub.dartlang.org/packages/js) and
[dart_js_facade_gen](https://github.com/dart-lang/js_facade_gen).

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Installation
From the CDN:  
`<script src="https://cdn.auth0.com/js/auth0-spa-js/1.6/auth0-spa-js.production.js"></script>`

## Usage

A simple usage example:

```dart
import 'package:auth0_spa_dart/auth0_spa_dart.dart';

Auth0Client auth0;
final clientId = '';
final domain = '';
final redirectUrl = window.location.href;
final options = CreateAuth0ClientOptions(
    domain: domain, client_id: clientId, redirect_uri: redirectUrl);

void main() async {
  auth0 = await createAuth0Client(options);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
