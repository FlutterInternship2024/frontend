import 'package:flutter/material.dart';
import 'package:flutterinternship2024/screens/welcomeScreen/welcomeMainScreen.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => getRoutes(settings),
      theme: ThemeData(
        appBarTheme: AppBarTheme().copyWith(backgroundColor: Colors.green),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}
