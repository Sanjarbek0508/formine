import 'package:flutter/material.dart';

class ItalianaStyle {
  static TextStyle bold({required double size, required Color color}) {
    return TextStyle(
      fontFamily: 'Italiana',
      fontWeight: FontWeight.bold,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle regular({required double size, required Color color}) {
    return TextStyle(
      fontFamily: 'Italiana',
      fontWeight: FontWeight.normal,
      fontSize: size,
      color: color,
    );
  }
}

class DancingStyle {
  static TextStyle regular({required double size, required Color color}) {
    return TextStyle(
      fontFamily: 'DancingScript',
      fontWeight: FontWeight.normal,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle medium({required double size, required Color color}) {
    return TextStyle(
      fontFamily: 'DancingScript',
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle bold({required double size, required Color color}) {
    return TextStyle(
      fontFamily: 'DancingScript',
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
    );
  }
}

class ItaliannoStyle {
  static TextStyle regular({required double size, required Color color}) {
    return TextStyle(
      fontFamily: 'Italianno',
      fontSize: size,
      color: color,
    );
  }
}
