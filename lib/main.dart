import 'package:flutter/material.dart';
import 'package:whats_app_ui_design/colors.dart';
import 'package:whats_app_ui_design/screens/mobile_layout_screen.dart';
import 'package:whats_app_ui_design/screens/web_layout_screen.dart';
import 'package:whats_app_ui_design/utils/responsive_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}
