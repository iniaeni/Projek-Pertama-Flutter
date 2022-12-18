import 'package:flutter/material.dart';
import 'package:my_app/home/home_screen.dart';
import 'package:my_app/login/login_screen.dart';
import 'package:my_app/menu/menu_screen.dart';
import 'package:my_app/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:  Colors.teal,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 3,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[50],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey[300]!,
          ),
          ),
        ),
        textTheme: const TextTheme(
          caption: TextStyle(
            fontSize: 14, 
            color: Colors.black87, 
            height: 2,
          ),
        )
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen(),
        'profile': (context) => const ProfileScreen(),
        'menu': (context) => const MenuScreen()
      },
    );
  }
}

