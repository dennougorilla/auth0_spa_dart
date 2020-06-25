@JS()
library Auth0Client;

import "package:js/js.dart";
import "package:js/js_util.dart" show promiseToFuture;

import 'global.dart';


/// Auth0 SDK for Single Page Applications using [Authorization Code Grant Flow with PKCE](https://auth0.com/docs/api-auth/tutorials/authorization-code-grant-pkce).
@JS()
class Auth0Client {
  // @Ignore
  Auth0Client.fakeConstructor$();
  external get options;
  external set options(v);
  external get cache;
  external set cache(v);
  external get transactionManager;
  external set transactionManager(v);
  external get domainUrl;
  external set domainUrl(v);
  external get tokenIssuer;
  external set tokenIssuer(v);
  external get DEFAULT_SCOPE;
  external factory Auth0Client(Auth0ClientOptions options);
  external get JS$_url;
  external set JS$_url(v);
  external get JS$_getParams;
  external set JS$_getParams(v);
  external get JS$_authorizeUrl;
  external set JS$_authorizeUrl(v);
  external get JS$_verifyIdToken;
  external set JS$_verifyIdToken(v);
  external get JS$_parseNumber;
  external set JS$_parseNumber(v);

  /// ```js
  /// auth0.logout();
  /// ```
  /// Performs a redirect to `/v2/logout` using the parameters provided
  /// as arguments. [Read more about how Logout works at Auth0](https://auth0.com/docs/logout).
  external void logout([LogoutOptions options]);
}

@JS("Auth0Client")
abstract class _Auth0Client {
  external Promise<String> buildAuthorizeUrl([RedirectLoginOptions options]);
  external Promise<void> loginWithPopup(
      [PopupLoginOptions options, PopupConfigOptions config]);
  external Promise<dynamic> getUser([GetUserOptions options]);
  external Promise<IdToken> getIdTokenClaims([getIdTokenClaimsOptions options]);
  external Promise<void> loginWithRedirect([RedirectLoginOptions options]);
  external Promise<RedirectLoginResult> handleRedirectCallback([String url]);
  external Promise<dynamic> getTokenSilently([GetTokenSilentlyOptions options]);
  external Promise<String> getTokenWithPopup(
      [GetTokenWithPopupOptions options, PopupConfigOptions config]);
  external Promise<bool> isAuthenticated();
}

extension Auth0ClientExtensions on Auth0Client {
  Future<String> buildAuthorizeUrl([RedirectLoginOptions options]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.buildAuthorizeUrl(options));
  }

  Future<void> loginWithPopup(
      [PopupLoginOptions options, PopupConfigOptions config]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.loginWithPopup(options, config));
  }

  Future<dynamic> getUser([GetUserOptions options]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.getUser(options));
  }

  Future<IdToken> getIdTokenClaims([getIdTokenClaimsOptions options]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.getIdTokenClaims(options));
  }

  Future<void> loginWithRedirect([RedirectLoginOptions options]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.loginWithRedirect(options));
  }

  Future<RedirectLoginResult> handleRedirectCallback([String url]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.handleRedirectCallback(url));
  }

  Future<dynamic> getTokenSilently([GetTokenSilentlyOptions options]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.getTokenSilently(options));
  }

  Future<String> getTokenWithPopup(
      [GetTokenWithPopupOptions options, PopupConfigOptions config]) {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.getTokenWithPopup(options, config));
  }

  Future<bool> isAuthenticated() {
    final Object t = this;
    final _Auth0Client tt = t;
    return promiseToFuture(tt.isAuthenticated());
  }
}

@JS()
abstract class Promise<T> {
  external factory Promise(
      void executor(void resolve(T result), Function reject));
  external Promise then(void onFulfilled(T result), [Function onRejected]);
}

@JS('createAuth0Client')
external Promise<String> _createAuth0Client([CreateAuth0ClientOptions options]);

@JS('createAuth0Client')
Future<Auth0Client> createAuth0Client([CreateAuth0ClientOptions options]) {
  return promiseToFuture(_createAuth0Client(options));
}

@JS()
@anonymous
class CreateAuth0ClientOptions {
  external String get domain;
  external String get client_id;
  external String get redirect_uri;

  external factory CreateAuth0ClientOptions(
      {String domain, String client_id, String redirect_uri});
}