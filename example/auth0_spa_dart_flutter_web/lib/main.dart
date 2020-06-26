import 'dart:html';

import 'package:flutter/material.dart';

import 'package:auth0_spa_dart/auth0_spa_dart.dart';
import 'package:auth0_spa_dart/src/global.dart';

class Options implements RedirectLoginOptions {
  @override
  String acr_values;

  @override
  String audience;

  @override
  String connection;

  @override
  String display;

  @override
  String id_token_hint;

  @override
  String login_hint;

  @override
  var max_age;

  @override
  String prompt;

  @override
  String scope;

  @override
  String ui_locales;

  @override
  num authorizeTimeoutInSeconds;

  @override
  String client_id;

  @override
  String domain;

  @override
  String issuer;

  @override
  num leeway;

  @override
  String redirect_uri;

  @override
  var appState;

  @override
  String fragment;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final clientId = '';
  final domain = '';
  final redirectUrl = 'http://localhost:52692/callback';
  Options options = Options()
    ..domain = ''
    ..client_id = ''
    ..redirect_uri = 'http://localhost:52692/callback';
  Auth0Client auth0;

  void login() async {
    final options = CreateAuth0ClientOptions(
        domain: domain, client_id: clientId, redirect_uri: redirectUrl);
    auth0 = await createAuth0Client(options);
    await auth0.loginWithRedirect(Options()
      ..domain = ''
      ..client_id = ''
      ..redirect_uri = 'http://localhost:52692/callback');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
        child: Center(
          child: RaisedButton(
            child: Text('login'),
            onPressed: () {
              login();
            },
          ),
        ),
      ),
    );
  }
}
