
import 'package:flutter/material.dart';


// 색상 변수 정의 (전역 `const` 변수 방식)
const BLACK_COLOR = Color(0xFF000000); // Colors.black 색상
const WHITE_COLOR = Color(0xFFFFFFFF); // Colors.white 색상
const GRAY19_COLOR = Color(0xFF303030);
const GRAY35_COLOR = Color(0xFF585858);
const GRAY38_COLOR = Color(0xFF616161); // Colors.grey[700] 색상
const GRAY40_COLOR = Color(0xFF666666);
const GRAY41_COLOR = Color(0xFF676767);
const GRAY42_COLOR = Color(0xFF6C6C6C);
const GRAY44_COLOR = Color(0xFF6F6F6F);
const GRAY45_COLOR = Color(0xFF737373);
const GRAY47_COLOR = Color(0xFF777777);
const GRAY51_COLOR = Color(0xFF818181);
const GRAY53_COLOR = Color(0xFF868686);
const GRAY60_COLOR = Color(0xFF999999);
const GRAY62_COLOR = Color(0xFF9E9E9E); // Colors.grey 색상
const GRAY65_COLOR = Color(0xFFA5A5A5);
const GRAY69_COLOR = Color(0xFFB0B0B0);
const GRAY74_COLOR = Color(0xFFBDBDBD); // Colors.grey.shade400 색상
const GRAY79_COLOR = Color(0xFFCACACA);
const GRAY81_COLOR = Color(0xFFCECECE);
const GRAY83_COLOR = Color(0xFFD3D3D3);
const GRAY85_COLOR = Color(0xFFDADADA);
const GRAY88_COLOR = Color(0xFFE0E0E0); // Colors.grey.shade300 색상
const GRAY93_COLOR = Color(0xFFEEEEEE);
const GRAY95_COLOR = Color(0xFFF1F1F1);
const GRAY96_COLOR = Color(0xFFF2F2F2);
const GRAY97_COLOR = Color(0xFFF3F3F3);
const GRAY98_COLOR = Color(0xFFFBFBFB);
const BLUE49_COLOR = Color(0xFF2196F3); // Colors.blue 색상
const SOFTGREENGRAY51_COLOR = Color(0xCC718B82);
const SOFTGREEN50_COLOR = Color(0xFF53977E);
const SOFTGREEN60_COLOR = Color(0xFF6FAD96);
const RED30_COLOR = Color(0xFFFF0000);
const RED46_COLOR = Color(0xFFF44336); // Colors.red 색상
const REDBROWN_COLOR = Color(0xFF905269);


// primarySwatch를 위한 MaterialColor 변환 함수
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(i * 0.1);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}