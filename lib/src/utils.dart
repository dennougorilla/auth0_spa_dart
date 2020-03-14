@JS()
library utils;

import 'dart:html';

import "package:js/js.dart";

import 'Auth0Client.dart';
import 'global.dart';

@JS()
external Function /*(...scopes: string[]) => any*/ get getUniqueScopes;
@JS()
external AuthenticationResult Function(String) get parseQueryResult;
@JS()
external Promise<AuthenticationResult> Function(String, String, num)
    get runIframe;
@JS()
external Window Function() get openPopup;
@JS()
external Promise<AuthenticationResult> Function(
    dynamic, String, PopupConfigOptions) get runPopup;
@JS()
external String Function() get createRandomString;
@JS()
external String Function(String) get encodeState;
@JS()
external String Function(String) get decodeState;
@JS()
external String Function(dynamic) get createQueryParams;
@JS()
external Promise<dynamic> Function(String) get sha256;
@JS()
external String Function(String) get urlDecodeB64;
@JS()
external String Function(dynamic) get bufferToBase64UrlEncoded;
@JS()
external Promise<dynamic> Function(OAuthTokenOptions) get oauthToken;
@JS()
external Crypto Function() get getCrypto;
@JS()
external dynamic Function() get getCryptoSubtle;
@JS()
external void Function() get validateCrypto;