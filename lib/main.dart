import 'package:flutter/material.dart';
import 'screens/Splash_Screen.dart';
import 'screens/LoginPage.dart';
import 'screens/HomeScreen/HomeScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Open Sans',
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const LoginPage(),
        'splash': (context) =>  SplashScreen(),
        'home': (context) =>  HomeScreen(),

      },
      // initialRoute: phone == null ? 'welcome' : 'home',
      initialRoute: 'splash',
    );
  }
}
