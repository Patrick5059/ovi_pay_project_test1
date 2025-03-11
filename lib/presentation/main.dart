import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ovipay_web_project/presentation/navigation/web_router.dart';
import 'package:ovipay_web_project/core/themes/colors.dart'; // 색상 파일 import

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // 플러터 기본 시작 시, 나오는 리본 모양 UI 부분 비활성화
      title: 'OviPay Web',
      theme: ThemeData(
        primarySwatch: createMaterialColor(BLUE49_COLOR),
      ),
      routerConfig: webRouter,  // GoRouter (webRouter) 설정
    );
  }
}