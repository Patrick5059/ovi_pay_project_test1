
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 웹의 사이드바(Sidebar) 또는 햄버거 메뉴 역할
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('메뉴'),
            ),
            ListTile(
              title: Text('홈'),
              onTap: () {},
            ),
            ListTile(
              title: Text('설정'),
              onTap: () {},
            ),
          ],
        ),
      ),
      // 웹의 헤더 역할
      appBar: AppBar(title: const Text('웹 헤더 부분 의미')),
      // 웹의 Main Contents 역할
      body: const Center(child: Text('메인 콘텐츠 부분 의미')),
      // 웹의 고정된 버튼(CTA) 역할
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      // 웹의 Footer 역할
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: '소개'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: '연락처'),
        ],
      ),
    );
  }
}