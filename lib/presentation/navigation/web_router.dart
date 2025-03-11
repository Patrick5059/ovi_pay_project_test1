
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ovipay_web_project/presentation/pages/home_page.dart';

// 웹 네비게이션을 관리하는 GoRouter 설정
final GoRouter webRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);