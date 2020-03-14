@JS()
library jwt;

import "package:js/js.dart";

import 'global.dart';

@JS()
external dynamic
    /*{
    encoded: {
        header: string;
        payload: string;
        signature: string;
    };
    header: any;
    claims: IdToken;
    user: any;
}*/
    Function(String) get decode;
@JS()
external dynamic
    /*{
    encoded: {
        header: string;
        payload: string;
        signature: string;
    };
    header: any;
    claims: IdToken;
    user: any;
}*/
    Function(JWTVerifyOptions) get verify;