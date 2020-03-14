@JS()
library global;

import "package:js/js.dart";

/// @ignore
@anonymous
@JS()
abstract class BaseLoginOptions {
  /// - `'page'`: displays the UI with a full page view
  /// - `'popup'`: displays the UI with a popup window
  /// - `'touch'`: displays the UI in a way that leverages a touch interface
  /// - `'wap'`: displays the UI with a "feature phone" type interface
  external String /*'page'|'popup'|'touch'|'wap'*/ get display;
  external set display(String /*'page'|'popup'|'touch'|'wap'*/ v);

  /// - `'none'`: do not prompt user for login or consent on reauthentication
  /// - `'login'`: prompt user for reauthentication
  /// - `'consent'`: prompt user for consent before processing request
  /// - `'select_account'`: prompt user to select an account
  external String /*'none'|'login'|'consent'|'select_account'*/ get prompt;
  external set prompt(String /*'none'|'login'|'consent'|'select_account'*/ v);

  /// Maximum allowable elasped time (in seconds) since authentication.
  /// If the last time the user authenticated is greater than this value,
  /// the user must be reauthenticated.
  external dynamic /*String|num*/ get max_age;
  external set max_age(dynamic /*String|num*/ v);

  /// The space-separated list of language tags, ordered by preference.
  /// For example: `'fr-CA fr en'`.
  external String get ui_locales;
  external set ui_locales(String v);

  /// Previously issued ID Token.
  external String get id_token_hint;
  external set id_token_hint(String v);

  /// The user's email address or other identifier. When your app knows
  /// which user is trying to authenticate, you can provide this parameter
  /// to pre-fill the email box or select the right session for sign-in.
  external String get login_hint;
  external set login_hint(String v);
  external String get acr_values;
  external set acr_values(String v);

  /// The default scope to be used on authentication requests.
  /// `openid profile email` is always added to all requests.
  external String get scope;
  external set scope(String v);

  /// The default audience to be used for requesting API access.
  external String get audience;
  external set audience(String v);

  /// The name of the connection configured for your application.
  /// If null, it will redirect to the Auth0 Login Page and show
  /// the Login Widget.
  external String get connection;
  external set connection(String v);

  /// If you need to send custom parameters to the Authorization Server,
  /// make sure to use the original parameter name.
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class Auth0ClientOptions implements BaseLoginOptions {
  /// Your Auth0 account domain such as `'example.auth0.com'`,
  /// `'example.eu.auth0.com'` or , `'example.mycompany.com'`
  /// (when using [custom domains](https://auth0.com/docs/custom-domains))
  external String get domain;
  external set domain(String v);

  /// The issuer to be used for validation of JWTs, optionally defaults to the domain above
  external String get issuer;
  external set issuer(String v);

  /// The Client ID found on your Application settings page
  external String get client_id;
  external set client_id(String v);

  /// The default URL where Auth0 will redirect your browser to with
  /// the authentication result. It must be whitelisted in
  /// the "Allowed Callback URLs" field in your Auth0 Application's
  /// settings. If not provided here, it should be provided in the other
  /// methods that provide authentication.
  external String get redirect_uri;
  external set redirect_uri(String v);

  /// The value in seconds used to account for clock skew in JWT expirations.
  /// Typically, this value is no more than a minute or two at maximum.
  /// Defaults to 60s.
  external num get leeway;
  external set leeway(num v);

  /// A maximum number of seconds to wait before declaring background calls to /authorize as failed for timeout
  /// Defaults to 60s.
  external num get authorizeTimeoutInSeconds;
  external set authorizeTimeoutInSeconds(num v);
}

/// @ignore
@anonymous
@JS()
abstract class AuthorizeOptions implements BaseLoginOptions {
  external String get response_type;
  external set response_type(String v);
  external String get response_mode;
  external set response_mode(String v);
  external String get redirect_uri;
  external set redirect_uri(String v);
  external String get nonce;
  external set nonce(String v);
  external String get state;
  external set state(String v);
  external String get scope;
  external set scope(String v);
  external String get code_challenge;
  external set code_challenge(String v);
  external String get code_challenge_method;
  external set code_challenge_method(String v);
}

@anonymous
@JS()
abstract class RedirectLoginOptions implements BaseLoginOptions {
  /// The URL where Auth0 will redirect your browser to with
  /// the authentication result. It must be whitelisted in
  /// the "Allowed Callback URLs" field in your Auth0 Application's
  /// settings.
  external String get redirect_uri;
  external set redirect_uri(String v);

  /// Used to store state before doing the redirect
  external dynamic get appState;
  external set appState(dynamic v);

  /// Used to add to the URL fragment before redirecting
  external String get fragment;
  external set fragment(String v);
}

@anonymous
@JS()
abstract class RedirectLoginResult {
  /// State stored when the redirect request was made
  external dynamic get appState;
  external set appState(dynamic v);
  external factory RedirectLoginResult({dynamic appState});
}

@anonymous
@JS()
abstract class PopupLoginOptions implements BaseLoginOptions {}

@anonymous
@JS()
abstract class PopupConfigOptions {
  /// The number of seconds to wait for a popup response before
  /// throwing a timeout error. Defaults to 60s
  external num get timeoutInSeconds;
  external set timeoutInSeconds(num v);
  external factory PopupConfigOptions({num timeoutInSeconds});
}

@anonymous
@JS()
abstract class GetUserOptions {
  /// The scope that was used in the authentication request
  external String get scope;
  external set scope(String v);

  /// The audience that was used in the authentication request
  external String get audience;
  external set audience(String v);
  external factory GetUserOptions({String scope, String audience});
}

@anonymous
@JS()
abstract class getIdTokenClaimsOptions {
  /// The scope that was used in the authentication request
  external String get scope;
  external set scope(String v);

  /// The audience that was used in the authentication request
  external String get audience;
  external set audience(String v);
  external factory getIdTokenClaimsOptions({String scope, String audience});
}

@anonymous
@JS()
abstract class GetTokenSilentlyOptions implements GetUserOptions {
  /// When `true`, ignores the cache and always sends a
  /// request to Auth0.
  external bool get ignoreCache;
  external set ignoreCache(bool v);

  /// There's no actual redirect when getting a token silently,
  /// but, according to the spec, a `redirect_uri` param is required.
  /// Auth0 uses this parameter to validate that the current `origin`
  /// matches the `redirect_uri` `origin` when sending the response.
  /// It must be whitelisted in the "Allowed Web Origins" in your
  /// Auth0 Application's settings.
  external String get redirect_uri;
  external set redirect_uri(String v);

  /// A maximum number of seconds to wait before declaring the background /authorize call as failed for timeout
  /// Defaults to 60s.
  external num get timeoutInSeconds;
  external set timeoutInSeconds(num v);

  /// If you need to send custom parameters to the Authorization Server,
  /// make sure to use the original parameter name.
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class GetTokenWithPopupOptions implements PopupLoginOptions {
  external factory GetTokenWithPopupOptions(
      {String /*'page'|'popup'|'touch'|'wap'*/ display,
      String /*'none'|'login'|'consent'|'select_account'*/ prompt,
      dynamic /*String|num*/ max_age,
      String ui_locales,
      String id_token_hint,
      String login_hint,
      String acr_values,
      String scope,
      String audience,
      String connection});
}

@anonymous
@JS()
abstract class LogoutOptions {
  /// The URL where Auth0 will redirect your browser to after the logout.
  /// > Note that if the `client_id` parameter is included, the
  /// `returnTo` URL that is provided must be listed in the
  /// Application's "Allowed Logout URLs" in the Auth0 dashboard.
  /// However, if the `client_id` parameter is not included, the
  /// `returnTo` URL must be listed in the "Allowed Logout URLs" at
  /// the account level in the Auth0 dashboard.
  external String get returnTo;
  external set returnTo(String v);

  /// The `client_id` of your application.
  external String get client_id;
  external set client_id(String v);

  /// When supported by the upstream identity provider,
  /// forces the user to logout of their identity provider
  /// and from Auth0.
  /// [Read more about how federated logout works at Auth0](https://auth0.com/docs/logout/guides/logout-idps)
  external bool get federated;
  external set federated(bool v);
  external factory LogoutOptions(
      {String returnTo, String client_id, bool federated});
}

/// @ignore
@anonymous
@JS()
abstract class AuthenticationResult {
  external String get state;
  external set state(String v);
  external String get code;
  external set code(String v);
  external String get error;
  external set error(String v);
  external String get error_description;
  external set error_description(String v);
  external factory AuthenticationResult(
      {String state, String code, String error, String error_description});
}

/// @ignore
@anonymous
@JS()
abstract class OAuthTokenOptions {
  external String get baseUrl;
  external set baseUrl(String v);
  external String get client_id;
  external set client_id(String v);
  external String get audience;
  external set audience(String v);
  external String get code_verifier;
  external set code_verifier(String v);
  external String get code;
  external set code(String v);
  external String get redirect_uri;
  external set redirect_uri(String v);
  external factory OAuthTokenOptions(
      {String baseUrl,
      String client_id,
      String audience,
      String code_verifier,
      String code,
      String redirect_uri});
}

/// @ignore
@anonymous
@JS()
abstract class JWTVerifyOptions {
  external String get iss;
  external set iss(String v);
  external String get aud;
  external set aud(String v);
  external String get id_token;
  external set id_token(String v);
  external String get nonce;
  external set nonce(String v);
  external num get leeway;
  external set leeway(num v);
  external num get max_age;
  external set max_age(num v);
  external factory JWTVerifyOptions(
      {String iss,
      String aud,
      String id_token,
      String nonce,
      num leeway,
      num max_age});
}

/// @ignore
@anonymous
@JS()
abstract class IdToken {
  external String get JS$__raw;
  external set JS$__raw(String v);
  external String get name;
  external set name(String v);
  external String get given_name;
  external set given_name(String v);
  external String get family_name;
  external set family_name(String v);
  external String get middle_name;
  external set middle_name(String v);
  external String get nickname;
  external set nickname(String v);
  external String get preferred_username;
  external set preferred_username(String v);
  external String get profile;
  external set profile(String v);
  external String get picture;
  external set picture(String v);
  external String get website;
  external set website(String v);
  external String get email;
  external set email(String v);
  external bool get email_verified;
  external set email_verified(bool v);
  external String get gender;
  external set gender(String v);
  external String get birthdate;
  external set birthdate(String v);
  external String get zoneinfo;
  external set zoneinfo(String v);
  external String get locale;
  external set locale(String v);
  external String get phone_number;
  external set phone_number(String v);
  external bool get phone_number_verified;
  external set phone_number_verified(bool v);
  external String get address;
  external set address(String v);
  external String get updated_at;
  external set updated_at(String v);
  external String get iss;
  external set iss(String v);
  external String get aud;
  external set aud(String v);
  external num get exp;
  external set exp(num v);
  external num get nbf;
  external set nbf(num v);
  external num get iat;
  external set iat(num v);
  external String get jti;
  external set jti(String v);
  external String get azp;
  external set azp(String v);
  external String get nonce;
  external set nonce(String v);
  external String get auth_time;
  external set auth_time(String v);
  external String get at_hash;
  external set at_hash(String v);
  external String get c_hash;
  external set c_hash(String v);
  external String get acr;
  external set acr(String v);
  external String get amr;
  external set amr(String v);
  external String get sub_jwk;
  external set sub_jwk(String v);
  external String get cnf;
  external set cnf(String v);
  external String get sid;
  external set sid(String v);
  external factory IdToken(
      {String name,
      String given_name,
      String family_name,
      String middle_name,
      String nickname,
      String preferred_username,
      String profile,
      String picture,
      String website,
      String email,
      bool email_verified,
      String gender,
      String birthdate,
      String zoneinfo,
      String locale,
      String phone_number,
      bool phone_number_verified,
      String address,
      String updated_at,
      String iss,
      String aud,
      num exp,
      num nbf,
      num iat,
      String jti,
      String azp,
      String nonce,
      String auth_time,
      String at_hash,
      String c_hash,
      String acr,
      String amr,
      String sub_jwk,
      String cnf,
      String sid});
}
