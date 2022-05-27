// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> da_DK = {
  "loginScreen": {
    "start": "Below are list of strings for login da ",
    "userEmail": "Brugernavn",
    "userPassword": "Adgangskode",
    "forgotPassword": "Glemt adgangskode?",
    "signIn": "Log ind",
    "errorFillFields": "Udfyld venligst alle felterne"
  },
  "homeScreen": {
    "start": "Below are list of strings for home",
    "posts": "Indlæg",
    "error": "Fejl",
    "noPostFound": "Ingen indlæg fundet",
    "chooseLanguage": "Vælg sprog"
  }
};
static const Map<String,dynamic> en_US = {
  "loginScreen": {
    "start": "Below are list of strings for login",
    "userEmail": "Enter user email",
    "userPassword": "Enter password",
    "forgotPassword": "Forgot Password?",
    "signIn": "Sign In",
    "errorFillFields": "Please fill in all fields"
  },
  "homeScreen": {
    "start": "Below are list of strings for home",
    "posts": "Posts",
    "error": "Error",
    "noPostFound": "No posts found",
    "chooseLanguage": "Choose Language"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"da_DK": da_DK, "en_US": en_US};
}
