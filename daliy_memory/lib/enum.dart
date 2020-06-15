
import 'dart:ui';

import 'package:flutter/material.dart';

enum Gender { MAN, WOMAN }
extension GenderExtension on Gender {
  String getValue() {
    switch (this) {
      case Gender.MAN:
        return 'Male';
      case Gender.WOMAN:
        return 'Female';
      default:
        return null;
    }
  }
}

enum Social { FACEBOOK, GOOGLE, KAKAO }
extension SocialExtension on Social {
  String getSymbolChar() {
    switch (this) {
      case Social.FACEBOOK:
        return 'F';
      case Social.GOOGLE:
        return 'G';
      case Social.KAKAO:
        return 'K';
      default:
        return '';
    }
  }
  List<Color> getSymbolColor() {
    switch (this) {
      case Social.FACEBOOK:
        return [Colors.blue, Colors.blueAccent];
      case Social.GOOGLE:
        return [Colors.white, Colors.redAccent];
      case Social.KAKAO:
        return [Colors.yellow, Colors.yellowAccent];
      default:
        return [];
    }
  }
}