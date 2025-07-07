import 'package:flutter/material.dart';
import 'package:mylove/const/colors.dart';
import 'package:mylove/const/fonts.dart';
import 'package:mylove/const/responsive.dart';
import 'package:mylove/pages/love_onboarding_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    AppResponsive.init(context);
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.creamyWhite,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.softPink,
          elevation: 1,
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: ItalianaStyle.bold(size: 24, color: Colors.black),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.softPink,
          selectedItemColor: AppColors.romanticRed,
          unselectedItemColor: Colors.grey.shade600,
          showUnselectedLabels: true,
        ),
      ),
      home: LoveEntryScreen(),
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
